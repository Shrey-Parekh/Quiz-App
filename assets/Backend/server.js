const express = require('express');
const mysql = require('mysql2');
const cors = require('cors');
const bcrypt = require('bcryptjs');
const bodyParser = require('body-parser');

const app = express();
app.use(cors());
app.use(express.json());
app.use(bodyParser.urlencoded({ extended: true }));

const db = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: 'shrey123',
    database: 'quiz_app'
});

// User Registration
app.post('/register', async (req, res) => {
    const { name, email, phone, dob, gender, password } = req.body;

    if (!name || !email || !phone || !dob || !gender || !password) {
        return res.status(400).json({ error: 'All fields are required!' });
    }

    try {
        const checkUserQuery = "SELECT * FROM users WHERE email = ? OR phone = ?";
        db.query(checkUserQuery, [email, phone], async (err, results) => {
            if (err) {
                return res.status(500).json({ error: `DB Error: ${err.message}` });
            }

            if (results.length > 0) {
                return res.status(400).json({ error: "Email or Phone already in use!" });
            }

            const hashedPassword = await bcrypt.hash(password, 10);

            const insertUserQuery = `
                INSERT INTO users (name, email, phone, dob, gender, password)
                VALUES (?, ?, ?, ?, ?, ?)
            `;

            db.query(insertUserQuery, [name, email, phone, dob, gender, hashedPassword], (err, result) => {
                if (err) {
                    return res.status(500).json({ error: `Insert failed: ${err.message}` });
                }

                res.status(201).json({ message: 'User registered successfully!' });
            });
        });
    } catch (error) {
        res.status(500).json({ error: `Registration failed! ${error.message}` });
    }
});

// User Login
app.post('/login', (req, res) => {
    const { identifier, password } = req.body;

    if (!identifier || !password) {
        return res.status(400).json({ success: false, error: 'All fields are required!' });
    }

    const query = `SELECT id, name, email, password FROM users WHERE email = ? OR phone = ?`;

    db.query(query, [identifier, identifier], (err, results) => {
        if (err) return res.status(500).json({ success: false, error: err.message });

        if (results.length === 0) {
            return res.status(401).json({ success: false, error: 'User not found!' });
        }

        const user = results[0];

        bcrypt.compare(password, user.password, (err, isMatch) => {
            if (err) return res.status(500).json({ success: false, error: 'Error comparing passwords!' });

            if (!isMatch) {
                return res.status(401).json({ success: false, error: 'Incorrect password!' });
            }

            res.json({ 
                success: true, 
                message: 'Login successful!', 
                user: { id: user.id, username: user.name, email: user.email } 
            });
        });
    });
});

// Get Quiz Questions
app.get('/questions', (req, res) => {
    const theme = req.query.theme;
    const validThemes = [
        'gk_questions', 'sport_questions', 'science_questions','maths_questions',
        'wildlife_questions', 'food_questions', 'tech_questions', 
        'movies_questions', 'space_questions', 'videogames_questions','literature_questions','geopolitics_questions','mythology_questions',
        'music_questions','maths_question','geography_questions','history_questions'
    ];

    if (!validThemes.includes(theme)) {
        return res.status(400).json({ error: 'Invalid theme selected!' });
    }

    const query = `SELECT * FROM ${theme} ORDER BY RAND() LIMIT 10`;    

    db.query(query, (err, results) => {
        if (err) {
            return res.status(500).json({ error: err.message });
        }
        res.json(results);
    });
});

// Submit Quiz Score
app.post("/submit-score", (req, res) => {
    const { email, username, theme, score, totalQuestions } = req.body;

    if (!email || score === undefined || !theme) {
        return res.status(400).json({ error: "Email, score, and theme are required." });
    }

    const query = "INSERT INTO user_score (email, username, score, theme) VALUES (?, ?, ?, ?)";
    
    db.query(query, [email, username, score, theme], (err, result) => {
        if (err) {
            return res.status(500).json({ error: "Database error while saving score." });
        }

        res.json({ success: true, message: "Score saved successfully!" });
    });
});

// Store User Reviews
app.post('/submit-review', async (req, res) => {
    const { name, email, rating, feedback_type, feedback, discovery, interests } = req.body;

    if (!name || !email || !rating || !feedback_type || !feedback) {
        return res.status(400).json({ error: "All required fields must be filled!" });
    }

    if (isNaN(rating) || rating < 1 || rating > 5) {
        return res.status(400).json({ error: "Invalid rating value! Must be between 1 and 5." });
    }

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

        res.status(201).json({ message: "Review submitted successfully!", reviewId: result.insertId });

    } catch (err) {
        res.status(500).json({ error: "Database error while saving review!" });
    }
});

// Contact Form Submission
app.post('/submit-contact', (req, res) => {
    const { name, email, subject, message } = req.body;

    if (!name || !email || !subject || !message) {
        return res.status(400).json({ error: 'All fields are required!' });
    }

    const query = ` 
        INSERT INTO contact_messages (name, email, subject, message)
        VALUES (?, ?, ?, ?)
    `;

    db.query(query, [name, email, subject, message], (err, result) => {
        if (err) {
            return res.status(500).json({ error: "Failed to save message. Please try again." });
        }

        res.status(201).json({ message: "Message sent successfully!" });
    });
});

// Get Leaderboard Data
app.get('/leaderboard', async (req, res) => {
    try {
        const theme = req.query.theme;

        await cleanLeaderboardData();

        let query = 'SELECT * FROM leaderboard';
        const params = [];

        if (theme && theme !== 'all') {
            query += ' WHERE theme = ?';
            params.push(theme);
        }

        query += ' ORDER BY percentage_score DESC LIMIT 10';

        const [results] = await db.promise().execute(query, params);

        let responseData = results.length > 0 ? results : getSampleLeaderboardData(theme);

        responseData = responseData.map(score => {
            const themeMapping = {
                'gk_questions': 'General Knowledge',
                'tech_questions': 'Technology',
                'sport_questions': 'Sports',
                'wildlife_questions': 'Wildlife',
                'history_questions': 'History',
                'geography_questions': 'Geography',
                'science_questions': 'Science',
                'maths_questions': 'Maths',
                'movies_questions': 'Movies & TV',
                'music_questions': 'Music',
                'mythology_questions': 'Mythology',
                'food_questions': 'Food & Drinks',
                'space_questions': 'Space',
                'literature_questions': 'Literature',
                'geopolitics_questions': 'Geopolitics',
                'videogames_questions': 'Video Games'
            };

            return {
                ...score,
                theme_name: themeMapping[score.theme] || score.theme,
                played_at: score.played_at ? new Date(score.played_at).toLocaleDateString() : new Date().toLocaleDateString()
            };
        });

        res.json({ data: responseData });
    } catch (error) {
        res.status(500).json({ message: 'Error fetching leaderboard data', error: error.message });
    }
});

async function cleanLeaderboardData() {
    try {
        const cleanupQuery = `
            DELETE FROM leaderboard 
            WHERE user_email IS NULL 
            OR username IS NULL 
            OR theme IS NULL 
            OR raw_score IS NULL 
            OR percentage_score IS NULL
            OR played_at IS NULL
        `;

        const [result] = await db.promise().execute(cleanupQuery);
        return result;
    } catch (error) {
        throw error;
    }
}
function getSampleLeaderboardData(theme) {
    const sampleData = [
        { username: 'Alice', theme: 'General Knowledge', raw_score: 8, percentage_score: 80, played_at: new Date() },
        { username: 'Bob', theme: 'Technology', raw_score: 9, percentage_score: 90, played_at: new Date() },
        { username: 'Charlie', theme: 'Sports', raw_score: 7, percentage_score: 70, played_at: new Date() }
    ];

    return sampleData;
}

// Logout endpoint
app.post("/logout", (req, res) => {
    try {
        res.json({ 
            success: true, 
            message: "Logged out successfully",
            timestamp: new Date().toISOString()
        });
    } catch (error) {
        res.status(500).json({ 
            success: false, 
            error: "Error during logout",
            message: error.message 
        });
    }
});

const PORT = 3000;
app.listen(PORT, () => {
    console.log(`Server running on http://localhost:${PORT}`);
});
