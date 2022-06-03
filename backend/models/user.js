const mongoose = require('mongoose');
const uniqueValidator = require('mongoose-unique-validator');

const userSchema = mongoose.Schema({
  firstname: { type: String, required: true, unique: false  },
  name: { type: String, required: true, unique: false  },
  photo: { type: String, required: true, unique: true },
  phonenumber: { type: String, required: true, unique: false },
  birthdate: { type: Date, required: true, unique: false  },
});

userSchema.plugin(uniqueValidator);

module.exports = mongoose.model('User', userSchema);