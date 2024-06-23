// Rute untuk operasi pada entitas artikel


const express = require('express');
const router = express.Router();
const articleController = require('../controllers/articleController');

// Rute untuk mendapatkan semua artikel
router.get('/', articleController.getAllArticles);

// Rute untuk mendapatkan detail artikel berdasarkan ID
router.get('/:id', articleController.getArticleById);

// Rute untuk membuat artikel baru
router.post('/', articleController.createArticle);

// Rute untuk memperbarui artikel berdasarkan ID
router.put('/:id', articleController.updateArticleById);

// Rute untuk menghapus artikel berdasarkan ID
router.delete('/:id', articleController.deleteArticleById);

module.exports = router;