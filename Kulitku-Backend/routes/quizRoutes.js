// Rute untuk logika operasi pada entitas quiz


const express = require('express');
const router = express.Router();
const quizController = require('../controllers/quizController');

// Rute untuk mendapatkan semua kuis
router.get('/', quizController.getAllQuizzes);

// Rute untuk mendapatkan detail kuis berdasarkan ID
router.get('/:id', quizController.getQuizById);

// Rute untuk membuat kuis baru
router.post('/', quizController.createQuiz);

// Rute untuk memperbarui kuis berdasarkan ID
router.put('/:id', quizController.updateQuizById);

// Rute untuk menghapus kuis berdasarkan ID
router.delete('/:id', quizController.deleteQuizById);

// rute untuk menilai jawaban quiz
router.post('/:id/answer', quizController.submitQuizAnswer);

module.exports = router;