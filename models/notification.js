const mongoose = require('mongoose');

const NotificationSchema = new mongoose.Schema({
    type: { type: String, required: true },
    message: { type: String, required: true },
    isRead: { type: Boolean, default: false }
});

module.exports = mongoose.model('Notification', NotificationSchema);
