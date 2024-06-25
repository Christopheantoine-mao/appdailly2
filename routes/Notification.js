const express = require('express');
const router = express.Router();
const notificationController = require('../controllers/notificationController');

// Define routes
router.get('/', notificationController.getAllNotifications);
router.post('/', notificationController.createNotification);
router.put('/:id', notificationController.updateNotification);
router.delete('/:id', notificationController.deleteNotification);

module.exports = router;
