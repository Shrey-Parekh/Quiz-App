const express = require('express');
const mysql = require('mysql2');
const cors = require('cors');

const app = express();
app.use(cors());
app.use(express.json()); // To parse JSON body

// Database connection
const db = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: 'shrey123', // Your password
    database: 'quiz_app'  // Database name
});

db.connect(err => {
    if (err) {
        console.error('Database connection failed: ' + err.stack);
        return;
    }
    console.log(' Connected to database.');
});

// ✅ Fetch questions based on theme
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

    // Fetch 10 random questions
    const query = `SELECT * FROM ${theme} ORDER BY RAND() LIMIT 10`;

    db.query(query, (err, results) => {
        if (err) {
            res.status(500).json({ error: err.message });
            return;
        }
        res.json(results);
    });
});

// ✅ Store user scores in user_scores table
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
            res.status(500).json({ error: err.message });
            return;
        }
        res.json({ message: 'Score submitted successfully!' });
    });
});

//  Fetch leaderboard by theme
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
            res.status(500).json({ error: err.message });
            return;
        }
        res.json(results);
    });
});

//  Start the server
const PORT = 3000;
app.listen(PORT, () => {
    console.log(` Server running on http://localhost:${PORT}`);
});
