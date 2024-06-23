// rute untuk login, register, oauth 2.0


const express = require('express')
const { authorizationUrl } = require('../controllers/authController');
var user = require('../controllers/authController')
var router = express.Router()

router.post('/api/v1/register', user.regist)
router.post('/api/v1/login', user.login)

// Endpoint untuk login menggunakan Google
router.get('/google', (req, res) => {
    console.log(authorizationUrl); // Tambahkan logging di sini
    res.redirect(authorizationUrl);
});

// Callback endpoint dari Google setelah login berhasil
router.get('/google/callback', user.googleCallback);


module.exports = router