const express = require('express');
const mongoose = require('mongoose');

// A MODIFIER AVEC LES INFOS DE VOTRE CONNEXION 
mongoose.connect('mongodb+srv://root:pass@sakartone2.72iupdj.mongodb.net/?retryWrites=true&w=majority',
  { useNewUrlParser: true,
    useUnifiedTopology: true })
  .then(() => console.log('Connexion à MongoDB réussie !'))
  .catch(() => console.log('Connexion à MongoDB échouée !'));


const userRoutes = require('./routes/user');


const app = express();

// Middleware
app.use(express.json()); // Pour extraire le corps JSON des requêtes POST

app.use((req, res, next) => {
  res.setHeader('Access-Control-Allow-Origin', '*');
  res.setHeader('Access-Control-Allow-Headers', 'Origin, X-Requested-With, Content, Accept, Content-Type, Authorization');
  res.setHeader('Access-Control-Allow-Methods', 'GET, POST, PUT, DELETE, PATCH, OPTIONS');
  next();
});

// Routes
app.use('/api/users', userRoutes);

app.get('/', (req, res, next) => {
  res.statusCode=200;
  res.setHeader('Content-Type', 'text/plain');
  res.end('Hello World');
});


module.exports = app;