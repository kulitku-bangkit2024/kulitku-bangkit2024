// Logika operasi untuk entitas artikel 


const con = require('../config/database');
const mysql = require('mysql');


// Fungsi untuk menjalankan kueri MySQL
const queryMySQL = (query, params = []) => {
  return new Promise((resolve, reject) => {
    con.query(query, params, (error, results) => {
      if (error) {
        reject(error);
      } else {
        resolve(results);
      }
    });
  });
};

exports.getAllArticles = async (req, res) => {
  try {
    const query = 'SELECT * FROM articles';
    con.query(query, (error, results) => {
      if (error) {
        throw error;
      }
      return res.status(200).json(results);
    });
  } catch (error) {
    return res.status(500).json({ message: 'Internal server error', error: error.message });
  }
};

exports.getArticleById = async (req, res) => {
  const { id } = req.params;
  try {
    const query = `SELECT * FROM articles WHERE id = ?`;
    con.query(query, [id], (error, results) => {
      if (error) {
        throw error;
      }
      if (results.length === 0) {
        return res.status(404).json({ message: 'Article not found' });
      }
      return res.status(200).json(results[0]);
    });
  } catch (error) {
    return res.status(500).json({ message: 'Internal server error', error: error.message });
  }
};

exports.createArticle = async (req, res) => {
  const { title, image, content } = req.body;
  try {
    const query = `INSERT INTO articles (title, image, content) VALUES (?, ?, ?)`;
    con.query(query, [title, image, content], (error, results) => {
      if (error) {
        throw error;
      }
      return res.status(201).json({ message: 'Article created successfully' });
    });
  } catch (error) {
    return res.status(500).json({ message: 'Internal server error', error: error.message });
  }
};

exports.updateArticleById = async (req, res) => {
  const { id } = req.params;
  const { title, image, content } = req.body;
  try {
    const query = `UPDATE articles SET title = ?, image = ?, content = ? WHERE id = ?`;
    con.query(query, [title, image, content, id], (error, results) => {
      if (error) {
        throw error;
      }
      return res.status(200).json({ message: 'Article updated successfully' });
    });
  } catch (error) {
    return res.status(500).json({ message: 'Internal server error', error: error.message });
  }
};

exports.deleteArticleById = async (req, res) => {
  const { id } = req.params;
  try {
    const query = `DELETE FROM articles WHERE id = ?`;
    con.query(query, [id], (error, results) => {
      if (error) {
        throw error;
      }
      return res.status(200).json({ message: 'Article deleted successfully' });
    });
  } catch (error) {
    return res.status(500).json({ message: 'Internal server error', error: error.message });
  }
};