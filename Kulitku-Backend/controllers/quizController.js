// Logika operasi untuk entitas quiz


const con = require('../config/database');
var mysql = require('mysql')

// Mendapatkan 5 quiz secara acak
exports.getAllQuizzes = (req, res) => {
  const query = 'SELECT * FROM quiz ORDER BY RAND() LIMIT 5';
  con.query(query, (error, results) => {
    if (error) {
      return res.status(500).json({ message: 'Internal server error', error: error.message });
    }
    return res.status(200).json(results);
  });
};

// Mendapatkan detail quiz berdasarkan ID
exports.getQuizById = (req, res) => {
  const { id } = req.params;
  const query = 'SELECT * FROM quiz WHERE id = ?';
  con.query(query, [id], (error, results) => {
    if (error) {
      return res.status(500).json({ message: 'Internal server error', error: error.message });
    }
    if (results.length === 0) {
      return res.status(404).json({ message: 'Quiz not found' });
    }
    return res.status(200).json(results[0]);
  });
};

// Membuat quiz baru
exports.createQuiz = (req, res) => {
  const { question, optionA, optionB, optionC, optionD, answer } = req.body;
  const query = 'INSERT INTO quiz (question, optionA, optionB, optionC, optionD, answer) VALUES (?, ?, ?, ?, ?, ?)';
  con.query(query, [question, optionA, optionB, optionC, optionD, answer], (error, results) => {
    if (error) {
      return res.status(500).json({ message: 'Internal server error', error: error.message });
    }
    return res.status(201).json({ message: 'Quiz created successfully' });
  });
};

// Memperbarui quiz berdasarkan ID
exports.updateQuizById = (req, res) => {
  const { id } = req.params;
  const { question, optionA, optionB, optionC, optionD, answer } = req.body;
  const query = 'UPDATE quiz SET question = ?, optionA = ?, optionB = ?, optionC = ?, optionD = ?, answer = ? WHERE id = ?';
  con.query(query, [question, optionA, optionB, optionC, optionD, answer, id], (error, results) => {
    if (error) {
      return res.status(500).json({ message: 'Internal server error', error: error.message });
    }
    if (results.affectedRows === 0) {
      return res.status(404).json({ message: 'Quiz not found' });
    }
    return res.status(200).json({ message: 'Quiz updated successfully' });
  });
};

// Menghapus quiz berdasarkan ID
exports.deleteQuizById = (req, res) => {
  const { id } = req.params;
  const query = 'DELETE FROM quiz WHERE id = ?';
  con.query(query, [id], (error, results) => {
    if (error) {
      return res.status(500).json({ message: 'Internal server error', error: error.message });
    }
    if (results.affectedRows === 0) {
      return res.status(404).json({ message: 'Quiz not found' });
    }
    return res.status(200).json({ message: 'Quiz deleted successfully' });
  });
};

// Memeriksa jawaban quiz
exports.submitQuizAnswer = (req, res) => {
  const { id } = req.params;
  const { answer } = req.body;
  const query = 'SELECT answer FROM quiz WHERE id = ?';
  con.query(query, [id], (error, results) => {
    if (error) {
      return res.status(500).json({ message: 'Internal server error', error: error.message });
    }
    if (results.length === 0) {
      return res.status(404).json({ message: 'Quiz not found' });
    }
    const correctAnswer = results[0].answer;
    const isCorrect = correctAnswer === answer;
    const response = {
      message: isCorrect ? 'Correct answer!' : 'Wrong answer.',
      correctAnswer,
    };
    return res.status(200).json(response);
  });
};