const User = require('../models/user');
const bcrypt = require('bcrypt');
const jwt = require('jsonwebtoken');



exports.getOneUser = (req, res, next) => {
  const id = new ObjectId(req.params.id);
  
  User.findOne({_id : id}).then(
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
  
exports.updateUser = async (req, res, next) => {

  try {
  const id = new ObjectId(req.params.id);

  const user = await User.findOne({ _id: id })

  if (req.body.firstname) {
    user.firstname = req.body.firstname
  }
  if (req.body.name) {
    user.name = req.body.name
  }
  if (req.body.photo) {
    user.photo = req.body.photo
  }
  if (req.body.phonenumber) {
    user.phonenumber = req.body.phonenumber
  }
  if (req.body.birthdate) {
    user.birthdate = req.body.birthdate
  }


  await user.save();
  res.status(200).json(user)
} catch {
  res.status(404)
  res.send({ error: "User doesn't exist!" })
}


};


