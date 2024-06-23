// Logika operasi otentikasi Oauth 2.0, login, register


var con = require('../config/database')
var mysql = require('mysql')
var md5 = require('md5')
const { nanoid } = require('nanoid')
const { google } = require('googleapis');
const connection = require('../config/database');
const dotenv = require('dotenv');

// Inisialisasi OAuth2 client untuk Google
const oauth2Client = new google.auth.OAuth2(
    process.env.GOOGLE_CLIENT_ID,
    process.env.GOOGLE_CLIENT_SECRET,
    'https://kulitku-bangkit2024.et.r.appspot.com/auth/google/callback'
);

// Definisikan scope yang diperlukan untuk otentikasi Google
const scopes = [
    'https://www.googleapis.com/auth/userinfo.email',
    'https://www.googleapis.com/auth/userinfo.profile'
];

// Buat URL autorisasi berdasarkan OAuth2 client dan scope
const authorizationUrl = oauth2Client.generateAuthUrl({
    access_type: 'offline',
    scope: scopes,
    include_granted_scopes: true,
});

// Logika OAuth2
exports.googleCallback = async (req, res) => {
    try {
        const { code } = req.query;
        const { tokens } = await oauth2Client.getToken(code);
        oauth2Client.setCredentials(tokens);

        const oauth2 = google.oauth2({
            auth: oauth2Client,
            version: 'v2'
        });

        const { data } = await oauth2.userinfo.get();

        if (!data.email || !data.name) {
            throw new Error('Invalid user data received from Google');
        }

        // Check if email already exists in the database
        const existingUser = await con.query('SELECT * FROM users WHERE email = ?', [data.email]);

        if (existingUser && existingUser.length > 0) {
            // Email sudah terdaftar, kembalikan respons dengan pesan yang sesuai
            return res.status(409).json({ message: 'Email sudah terdaftar. Registrasi gagal' });
        }

        // Generate id_user using nanoid(16)
        const idUser = nanoid(16);

        // Simpan data pengguna baru dalam database
        const hashedPassword = md5(data.email); // Menggunakan md5 untuk mengenkripsi email sebagai password
        const insertQuery = `INSERT INTO users (id_user, name, email, password, address) VALUES (?, ?, ?, ?, ?)`;
        const insertValues = [idUser, data.name, data.email, hashedPassword, "-"];
        
        connection.query(insertQuery, insertValues, (error, results, fields) => {
            if (error) {
                console.error('Error inserting user into database:', error);
                if (error.code === 'ER_DUP_ENTRY') {
                    return res.status(409).json({ message: 'Email sudah terdaftar. Registrasi gagal' });
                }
                return res.status(500).json({ message: 'Terjadi kesalahan saat menyimpan data pengguna baru' });
            }
            console.log('User added to database:', results);
            res.json({
                message: 'Pengguna berhasil dibuat',
                    id_user: idUser, // Sertakan id_user dalam respons
                    name: data.name,
                    email: data.email,
                    address: "-"
            });
        });
    } catch (error) {
        console.error('Error fetching user data from Google:', error);
        res.status(500).json({
            message: 'Terjadi kesalahan saat mengambil data pengguna dari Google',
            error: error.message
        });
    }
};

// Export authorizationUrl untuk digunakan dalam routes
exports.authorizationUrl = authorizationUrl;


exports.regist = function (req, res) {
    var id = nanoid(16)
    var post = {
        name: req.body.name,
        email: req.body.email,
        password: md5(req.body.password)
    }

    var query = 'select email from ?? where ?? = ?'
    var table = ['users', 'email', post.email]

    query = mysql.format(query, table)

    con.query(query, function (error, rows) {
        if (error) {
            res.status(500).json({
                success: false,
                error: error
            })
        } else {
            if (rows.length == 0) {
                var data = {
                    id_user: 'user-'+id,
                    name: post.name,
                    email: post.email,
                    password: post.password
                }
                var query = 'insert into ?? set ?'
                var table = ['users']
                query = mysql.format(query, table)
                con.query(query, data, function (error, rows) {
                    if (error) {
                        res.status(500).json({
                            success: false,
                            error: error
                        })
                    } else {
                        res.status(201).json({
                            success: true,
                            message: 'Registration succeed',
                            data:({
                                id_user: 'user-'+id,
                                email: post.email,
                                name: post.name,
                                password: post.password,
                            })
                        });
                    }
                })
            } else {
                res.status(409).json({
                    success: false,
                    message: 'Email has been registered. Registration failed'
                });
            }
        }
    })
}

exports.login = function(req, res) {
    var post = {
        email: req.body.email,
        password: req.body.password
    };

    var query = "SELECT * FROM ?? WHERE ?? = ? AND ?? = ?";
    var table = ['users', 'email', post.email, 'password', md5(post.password)];

    query = mysql.format(query, table);
    con.query(query, function(error, rows) {
        if (error) {
            res.status(500).json({
                success: false,
                error: error
            });
        } else {
            if (rows.length == 1) {
                var userData = {
                    id_user: rows[0].id_user,
                    name: rows[0].name,
                    email: rows[0].email // Tambahkan email ke dalam objek userData
                };
                res.status(200).json({
                    success: true,
                    userId: userData.id_user,
                    name: userData.name,
                    email: userData.email, // Sertakan email dalam respons
                    message: 'Login success'
                });
            } else {
                res.status(401).json({
                    success: false,
                    message: 'Wrong e-mail or password!'
                });
            }
        }
    });
};