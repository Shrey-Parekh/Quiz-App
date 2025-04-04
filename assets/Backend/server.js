const express = require('express');
const mysql = require('mysql2');
const cors = require('cors');
const bcrypt = require('bcryptjs');
const bodyParser = require('body-parser');

const app = express();
app.use(cors());
app.use(express.json()); // To parse JSON body
app.use(bodyParser.urlencoded({ extended: true }));

// Database connection
const db = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: 'shrey123', // Your password
    database: 'quiz_app'  // Database name
});

db.connect(err => {
    if (err) {
        console.error('❌ Database connection failed: ' + err.stack);
        return;
    }
    console.log('✅ Connected to database.');
});

// ✅ User Registration
app.post('/register', async (req, res) => {
    const { name, email, phone, dob, gender, password } = req.body;

    if (!name || !email || !phone || !dob || !gender || !password) {
        return res.status(400).json({ error: '❗ All fields are required!' });
    }

    try {
        console.log("🔍 Checking existing user...");

        const checkUserQuery = "SELECT * FROM users WHERE email = ? OR phone = ?";
        db.query(checkUserQuery, [email, phone], async (err, results) => {
            if (err) {
                console.error("❌ Database error:", err);
                return res.status(500).json({ error: `❌ DB Error: ${err.message}` });
            }

            if (results.length > 0) {
                console.log("❌ User already exists:", results);
                return res.status(400).json({ error: "❌ Email or Phone already in use!" });
            }

            // Hash password
            const hashedPassword = await bcrypt.hash(password, 10);
            console.log("🔐 Hashed password:", hashedPassword);

            const insertUserQuery = `
                INSERT INTO users (name, email, phone, dob, gender, password)
                VALUES (?, ?, ?, ?, ?, ?)
            `;

            db.query(insertUserQuery, [name, email, phone, dob, gender, hashedPassword], (err, result) => {
                if (err) {
                    console.error("❌ Insert error:", err);
                    return res.status(500).json({ error: `❌ Insert failed: ${err.message}` });
                }

                console.log("✅ User registered:", result);
                res.status(201).json({ message: '✅ User registered successfully!' });
            });
        });

    } catch (error) {
        console.error("❌ Registration failed:", error);
        res.status(500).json({ error: `❌ Registration failed! ${error.message}` });
    }
});

// ✅ User Login
app.post('/login', (req, res) => {
    const { identifier, password } = req.body;

    if (!identifier || !password) {
        return res.status(400).json({ success: false, error: '❗ All fields are required!' });
    }

    const query = `SELECT id, name, email, password FROM users WHERE email = ? OR phone = ?`;

    db.query(query, [identifier, identifier], (err, results) => {
        if (err) return res.status(500).json({ success: false, error: err.message });

        if (results.length === 0) {
            return res.status(401).json({ success: false, error: '❌ User not found!' });
        }

        const user = results[0];

        // ✅ Compare hashed password
        bcrypt.compare(password, user.password, (err, isMatch) => {
            if (err) return res.status(500).json({ success: false, error: 'Error comparing passwords!' });

            if (!isMatch) {
                return res.status(401).json({ success: false, error: '❌ Incorrect password!' });
            }

            res.json({ 
                success: true, 
                message: '✅ Login successful!', 
                user: { id: user.id, username: user.name, email: user.email } 
            });
        });
    });
});

// ✅ Get Quiz Questions
app.get('/questions', (req, res) => {
    const theme = req.query.theme;
    const validThemes = [
        'gk_questions', 'sport_questions', 'science_questions', 
        'wildlife_questions', 'food_questions', 'tech_questions', 
        'movies_questions', 'space_questions', 'videogames_questions','literature_questions','geopolitics_questions','mythology_questions',
        'music_questions','maths_question','geography_questions','history_questions'
    ];

    if (!validThemes.includes(theme)) {
        return res.status(400).json({ error: '❌ Invalid theme selected!' });
    }

    const query = `SELECT * FROM ${theme} ORDER BY RAND() LIMIT 10`;

    db.query(query, (err, results) => {
        if (err) {
            return res.status(500).json({ error: err.message });
        }
        res.json(results);
    });
});

// ✅ Submit Quiz Score - UPDATED
app.post("/submit-score", (req, res) => {
    const { email, username, theme, score, totalQuestions } = req.body;

    if (!email || score === undefined || !theme) {
        return res.status(400).json({ error: "Email, score, and theme are required." });
    }

    // Insert score with the provided username and theme
    const query = "INSERT INTO user_score (email, username, score, theme) VALUES (?, ?, ?, ?)";
    
    db.query(query, [email, username, score, theme], (err, result) => {
        if (err) {
            console.error("Error saving score:", err);
            return res.status(500).json({ error: "Database error while saving score." });
        }
        
        console.log(`✅ Score saved for user ${username} with email ${email}: ${score} in theme ${theme}`);
        res.json({ success: true, message: "Score saved successfully!" });
    });
});

// ✅ Store User Reviews (Improved)
app.post('/submit-review', async (req, res) => {
    const { name, email, rating, feedback_type, feedback, discovery, interests } = req.body;

    if (!name || !email || !rating || !feedback_type || !feedback) {
        return res.status(400).json({ error: "❗ All required fields must be filled!" });
    }

    if (isNaN(rating) || rating < 1 || rating > 5) {
        return res.status(400).json({ error: "❌ Invalid rating value! Must be between 1 and 5." });
    }

    console.log("📝 Received review data:", req.body);

    const query = `
        INSERT INTO user_reviews (name, email, rating, feedback_type, feedback, discovery, interests)
        VALUES (?, ?, ?, ?, ?, ?, ?)
    `;

    try {
        const [result] = await db.promise().query(query, [
            name, email, rating, feedback_type, feedback,
            discovery && discovery.trim() !== "" ? discovery : null,
            interests && interests.trim() !== "" ? interests : null
        ]);

        console.log("✅ Review stored successfully with ID:", result.insertId);
        res.status(201).json({ message: "✅ Review submitted successfully!", reviewId: result.insertId });

    } catch (err) {
        console.error("❌ Error saving review:", err);
        res.status(500).json({ error: "❌ Database error while saving review!" });
    }
});

// ✅ Contact Form Submission
app.post('/submit-contact', (req, res) => {
    const { name, email, subject, message } = req.body;

    if (!name || !email || !subject || !message) {
        return res.status(400).json({ error: '❗ All fields are required!' });
    }

    const query = `
        INSERT INTO contact_messages (name, email, subject, message)
        VALUES (?, ?, ?, ?)
    `;

    db.query(query, [name, email, subject, message], (err, result) => {
        if (err) {
            console.error("❌ Error saving contact message:", err);
            return res.status(500).json({ error: "❌ Failed to save message. Please try again." });
        }
        
        console.log("✅ Contact message saved successfully:", result);
        res.status(201).json({ message: "✅ Message sent successfully!" });
    });
});

// Logout endpoint
app.post("/logout", (req, res) => {
    try {
        // Clear any session data if you're using sessions
        // For now, we'll just send a success response
        res.json({ 
            success: true, 
            message: "Logged out successfully",
            timestamp: new Date().toISOString()
        });
    } catch (error) {
        console.error("Logout error:", error);
        res.status(500).json({ 
            success: false, 
            error: "Error during logout",
            message: error.message 
        });
    }
});

// ✅ Start the server
const PORT = 3000;
app.listen(PORT, () => {
    console.log(`🚀 Server running on http://localhost:${PORT}`);
});