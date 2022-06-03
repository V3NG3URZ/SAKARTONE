const User = require('../models/user');
const bcrypt = require('bcrypt');
const jwt = require('jsonwebtoken');



exports.getOneUser = (req, res, next) => {
  User.findOne({
      _id: req.params.id
  }).then(
    () => {
      res.status(200).json(user);
    }
  ).catch(
    (error) => {
      res.status(400).json({
        error: error
      });
    }
  );
};

exports.getAllUsers = (req, res, next) => {
  User.find().then(
    (users) => {
      res.status(200).json(users);
    }
  ).catch(
    (error) => {
      res.status(400).json({
        error: error
      });
    }
  );
};

exports.createUser = (req, res, next) => {
  bcrypt.hash(req.body.password, 10)
  .then(hash => {
  const user = new User({
    _id: req.body._id,
    firstname: req.body.firstname,
    name: req.body.name,
    photo: req.body.photo,
    phonenumber: req.body.phonenumber,
    birthdate: req.body.birthdate,
  });
  user.save()
  .then(() => res.status(201).json({message: 'Nouvel utilisateur créé'})).
  catch(error => res.status(400).json({error: error}));
})
.catch(error => res.status(500).json({error: error}));
};
  
exports.createUser = (req, res, next) => {
  bcrypt.hash(req.body.password, 10)
  .then(hash => {
  const user = new User({
    _id: req.body._id,
    name: req.body.name,
  });
  user.save()
  .then(() => res.status(201).json({message: 'Nouvel utilisateur créé'})).
  catch(error => res.status(400).json({error: error}));
})
.catch(error => res.status(500).json({error: error}));
};


