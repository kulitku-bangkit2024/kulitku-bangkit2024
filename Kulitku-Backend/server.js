require('dotenv').config();

// server.js
const express = require('express'); // Memuat modul Express
const bodyParser = require('body-parser'); // Memuat modul body-parser untuk mem-parsing request body
const app = express(); // Membuat instance dari Express

// Mengambil port dan host dari variabel lingkungan
const port = process.env.PORT;
const host = process.env.DB_HOST;

const tipsRoutes = require('./routes/tipsRoutes'); // Memuat rute untuk tips
const quizRoutes = require('./routes/quizRoutes'); // Memuat rute untuk quiz
const articleRoutes = require('./routes/articleRoutes'); // Memuat rute article
const authRoutes = require('./routes/authRoutes'); // Memuat rute untuk auth
const usersRoutes = require('./routes/usersRoutes'); // Memuat rute untuk user

var route = require("./routes/usersRoutes")
route(app)

// Middleware
app.use(bodyParser.urlencoded({ extended: true }));
app.use(bodyParser.json());
app.use(express.json());

// Routes
app.use('/auth', authRoutes); // Menghubungkan rute auth
app.use('/tips', tipsRoutes); // Menghubungkan rute tips
app.use('/quiz', quizRoutes); // Menghubungkan rute quiz
app.use('/article', articleRoutes); // Menghubungkan rute article

// Server listening
app.listen(port, () => {
    console.log(`Server started on port ${port} and running at host ${host}`);
});