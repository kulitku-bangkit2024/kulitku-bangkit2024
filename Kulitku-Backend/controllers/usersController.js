// Logika operasi untuk entitas users


const con = require('../config/database');
const mysql = require('mysql');
const md5 = require('md5');
const { nanoid } = require('nanoid');

exports.index = function(req, res) {
    res.status(200).json({
        success: true,
        message: 'REST API is working'
    });
};

exports.getUserProfile = function(req, res) {
    let id = req.params.id;

    con.query('SELECT id_user, name, email, password FROM users WHERE id_user = ?', [id], function(error, rows) {
        if (error) {
            console.error('Error fetching user profile:', error);
            return res.status(500).json({
                success: false,
                message: 'Failed to fetch user profile',
                error: error.message
            });
        }

        // Jika pengguna ditemukan, kirim respons dengan data pengguna
        if (rows.length > 0) {
            return res.status(200).json({
                success: true,
                message: 'Data fetched successfully',
                userProfile: {
                    data: rows
                }
            });
        } else {
            // Jika pengguna tidak ditemukan, kirim respons dengan pesan yang sesuai
            return res.status(404).json({
                success: false,
                message: 'User not found'
            });
        }
    });
};

exports.deleteUserbyId = function(req, res) {
    var query = "DELETE FROM ?? WHERE ?? = ?";
    var table = ['users', 'id_user', req.body.id_user];
    query = mysql.format(query, table);
    con.query(query, function(error, rows) {
        if (error) {
            res.status(500).json({
                success: false,
                error: error
            });
        } else {
            res.status(200).json({
                success: true,
                message: 'User with id = ' + req.body.id_user + ' has been deleted'
            });
        }
    });
};

exports.editUserProfile = function(req, res) {
    var query = "UPDATE ?? SET ?? = ?, ?? = ?, ?? = ? WHERE ?? = ?";
    var table = ['users', 'username', req.body.username, 'email', req.body.email, 'password', md5(req.body.password), 'id_user', req.body.id_user];
    query = mysql.format(query, table);
    con.query(query, function(error, rows) {
        if (error) {
            res.status(500).json({
                success: false,
                error: error
            });
        } else {
            res.status(200).json({
                success: true,
                message: 'Data for user with id ' + req.body.id_user + ' has been updated',
                id_user: req.body.id_user,
                username: req.body.username,
                email: req.body.email,
                password: md5(req.body.password)
            });
        }
    });
};