// Rute untuk logika tips


const express = require('express');
const router = express.Router();
const tipsController = require('../controllers/tipsController');

// Mendapatkan semua tips
router.get('/', tipsController.getAllTips);

// Mendapatkan detail tips berdasarkan ID
router.get('/:id', tipsController.getTipById);

// Membuat tips baru
router.post('/', tipsController.createTip);

// Memperbarui tips berdasarkan ID
router.put('/:id', tipsController.updateTipById);

// Menghapus tips berdasarkan ID
router.delete('/:id', tipsController.deleteTipById);

module.exports = router;