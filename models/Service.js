const mongoose = require('mongoose');

const ServiceSchema = new mongoose.Schema({
    name: { type: String, required: true },
    description: { type: String, required: true },
    isAvailable: { type: Boolean, default: true },
    sender: { type: String },
    recipient: { type: String },
    origin: { type: String },
    destination: { type: String },
    amount: { type: Number },
    isAccepted: { type: Boolean, default: false }
});

module.exports = mongoose.model('Service', ServiceSchema);
