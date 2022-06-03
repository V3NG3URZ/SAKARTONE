const express = require('express');

const router = express.Router();
const userCtrl = require('../controllers/user');

// Routes
router.get('/', userCtrl.getAllUsers);
router.get('/:id', userCtrl.getOneUser);
router.post('/', userCtrl.createUser);
router.post('/login', userCtrl.login);

module.exports = router;