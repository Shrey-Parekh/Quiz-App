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
        const hashedPassword = await bcrypt.hash(password, 10);

        const query = `
            INSERT INTO users (name, email, phone, dob, gender, password)
            VALUES (?, ?, ?, ?, ?, ?)
        `;

        db.query(query, [name, email, phone, dob, gender, hashedPassword], (err, result) => {
            if (err) {
                return res.status(500).json({ error: err.message });
            }
            res.status(201).json({ message: '✅ User registered successfully!' });
        });
    } catch (error) {
        res.status(500).json({ error: '❌ Registration failed!' });
    }
});

// ✅ User Login (Accepts Email or Phone)
app.post('/login', (req, res) => {
    const { identifier, password } = req.body;

    if (!identifier || !password) {
        return res.status(400).json({ success: false, error: '❗ All fields are required!' });
    }

    const query = `
        SELECT * FROM users WHERE email = ? OR phone = ?
    `;

    db.query(query, [identifier, identifier], (err, results) => {
        if (err) {
            return res.status(500).json({ success: false, error: err.message });
        }

        if (results.length === 0) {
            return res.status(401).json({ success: false, error: '❌ User not found!' });
        }

        const user = results[0];

        // ✅ Compare hashed password
        bcrypt.compare(password, user.password, (err, isMatch) => {
            if (err) {
                return res.status(500).json({ success: false, error: 'Error comparing passwords!' });
            }

            if (!isMatch) {
                return res.status(401).json({ success: false, error: '❌ Incorrect password!' });
            }

            // ✅ Login Successful
            res.json({ 
                success: true, 
                message: '✅ Login successful!', 
                user: { id: user.id, username: user.name } 
            });
        });
    });
});

// ✅ Get Quiz Questions
app.get('/questions', (req, res) => {
    const theme = req.query.theme;
    const validThemes = [
        'gk_questions', 
        'sport_questions', 
        'science_questions', 
        'wildlife_questions', 
        'food_questions', 
        'tech_questions', 
        'movies_questions', 
        'space_questions', 
        'videogames_questions'
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

// ✅ Submit Quiz Score
app.post('/submit-score', (req, res) => {
    const { username, theme, score, totalQuestions } = req.body;

    if (!username || !theme || score === undefined || !totalQuestions) {
        return res.status(400).json({ error: '❗ All fields are required!' });
    }

    const query = `
        INSERT INTO user_scores (username, theme, score, total_questions)
        VALUES (?, ?, ?, ?)
    `;

    db.query(query, [username, theme, score, totalQuestions], (err, result) => {
        if (err) {
            return res.status(500).json({ error: err.message });
        }
        res.json({ message: '✅ Score submitted successfully!' });
    });
});

// ✅ Leaderboard API
app.get('/leaderboard', (req, res) => {
    const theme = req.query.theme;

    const query = `
        SELECT username, score, total_questions, created_at
        FROM user_scores
        WHERE theme = ?
        ORDER BY score DESC, created_at ASC
        LIMIT 10
    `;

    db.query(query, [theme], (err, results) => {
        if (err) {
            return res.status(500).json({ error: err.message });
        }
        res.json(results);
    });
});

// ✅ Start the server
const PORT = 3000;
app.listen(PORT, () => {
    console.log(` Server running on http://localhost:${PORT}`);
});
