// Logika operasi untuk entitas tips


const con = require('../config/database');
const mysql = require('mysql');

// Mendapatkan semua tips
exports.getAllTips = async (req, res) => {
  try {
    const query = 'SELECT * FROM tips';
    con.query(query, (error, results) => {
      if (error) {
        return res.status(500).json({ message: 'Internal server error', error: error.message });
      }
      return res.status(200).json(results);
    });
  } catch (error) {
    return res.status(500).json({ message: 'Internal server error', error: error.message });
  }
};

// Mendapatkan detail tips berdasarkan ID
exports.getTipById = async (req, res) => {
  const { id } = req.params;
  try {
    const query = `SELECT * FROM tips WHERE id = ${id}`;
    con.query(query, (error, results) => {
      if (error) {
        return res.status(500).json({ message: 'Internal server error', error: error.message });
      }
      if (results.length === 0) {
        return res.status(404).json({ message: 'Tip not found' });
      }
      return res.status(200).json(results[0]);
    });
  } catch (error) {
    return res.status(500).json({ message: 'Internal server error', error: error.message });
  }
};

// Membuat tips baru
exports.createTip = async (req, res) => {
  const { title, content } = req.body;
  try {
    const query = `INSERT INTO tips (title, content) VALUES ('${title}', '${content}')`;
    con.query(query, (error) => {
      if (error) {
        return res.status(500).json({ message: 'Internal server error', error: error.message });
      }
      return res.status(201).json({ message: 'Tip created successfully' });
    });
  } catch (error) {
    return res.status(500).json({ message: 'Internal server error', error: error.message });
  }
};

// Memperbarui tips berdasarkan ID
exports.updateTipById = async (req, res) => {
  const { id } = req.params;
  const { title, content } = req.body;
  try {
    const query = `UPDATE tips SET title = '${title}', content = '${content}', updatedAt = NOW() WHERE id = ${id}`;
    con.query(query, (error) => {
      if (error) {
        return res.status(500).json({ message: 'Internal server error', error: error.message });
      }
      return res.status(200).json({ message: 'Tip updated successfully' });
    });
  } catch (error) {
    return res.status(500).json({ message: 'Internal server error', error: error.message });
  }
};

// Menghapus tips berdasarkan ID
exports.deleteTipById = async (req, res) => {
  const { id } = req.params;
  try {
    const query = `DELETE FROM tips WHERE id = ${id}`;
    con.query(query, (error) => {
      if (error) {
        return res.status(500).json({ message: 'Internal server error', error: error.message });
      }
      return res.status(200).json({ message: 'Tip deleted successfully' });
    });
  } catch (error) {
    return res.status(500).json({ message: 'Internal server error', error: error.message });
  }
};