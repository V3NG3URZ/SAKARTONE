
# INSTALLATION ET CONFIGURATION DE NODEJS #

Pour faire fonctionner le backend, vous aurez besoin d'avoir nodeJS sur votre machine.
Nous l'avons déjà installé ensemble lors de la dernière séance.
Si jamais vous ne l'avez pas sur votre machine, référez-vous à la dernière séance.

Vérifiez que nodeJS est bien installé pour vous :
> node --version
v16.14.2

Vous pouvez ensuite créer une nouvelle application Flutter :
> flutter create loginapp

Et organiser votre dossier :
> cd loginapp
> mkdir flutter
> mv * ./flutter
> mkdir backend

Vous devriez avoir l'architecture de fichier suivante :
loginapp> ls
backend/ flutter/

Nous nous concentrerons dans un premier temps sur le dossier backend qui contiendra toute la configuration de notre serveur Node
et la connexion avec une base de données mongoDB
> cd backend

Une fois dans le dossier backend, initialisez un nouveau serveur node (le seul champ à préciser sera le champ entry point) :
> npm init
```
This utility will walk you through creating a package.json file.
It only covers the most common items, and tries to guess sensible defaults.

See npm help init for definitive documentation on these fields
and exactly what they do.

Use npm install <pkg> afterwards to install a package and
save it as a dependency in the package.json file.

Press ^C at any time to quit.
package name: (backend)
version: (1.0.0)
description:
entry point: (index.js) server.js
test command:
git repository:
keywords:
author:
license: (ISC)
About to write to D:\Logiciels\Projects\Flutter\backend\package.json:

{
  "name": "backend",
  "version": "1.0.0",
  "description": "",
  "main": "server.js",
  "scripts": {
    "test": "echo \"Error: no test specified\" && exit 1"
  },
  "author": "",
  "license": "ISC"
}


Is this OK? (yes) yes
```

Vous pouvez ensuite installer les dépendances nécessaires au projet :

> npm i express nodemon mongoose mongoose-unique-validator bcrypt jsonwebtoken

Vous pourrez ensuite récupérer le contenu du dossier backend partagé et l'extraire dans votre dossier backend.
N'hésitez pas à parcourir les fichiers pour avoir une idée de la configuration d'un serveur :
- controller : c'est la logique de l'application avec la définition d'API nous servant d'interface pour interagir avec le serveur et la base de donnée
- models : c'est ici que l'on définit les modèles des données que l'on souhaite manipuler, notamment les données à lire et à écrire dans la base de données
- routes : on définit ici un routeur qui permet de relier la logique définie par les controller avec l'application express exposée sur le serveur.
- app.js : le fichier de configuration de notre application express (framework nodeJS) qui nous facilite le développement
- server.js : le fichier de configuration de notre serveur nodeJS qui permet de définir ici le port d'écoute et les comportements en cas d'erreurs.

# MODIFIER LE FICHIER APP.JS #

Le seul endroit que vous aurez besoin de modifier est la ligne 5 du fichier app.js
La connexion à la base de données se fait dans mon cas en local avec une instance de mongo qui tourne dans un docker.
Si vous utilisez la base de donnée configurée sur Atlas lors de la dernière séance, vous devrez copier ici la même adresse de connexion récupérée sur Atlas.

Une fois la configuration de la connexion à votre base de données à jour vous pouvez essayer de lancer votre serveur
backend> nodemon server
```
[nodemon] 2.0.16
[nodemon] to restart at any time, enter `rs`
[nodemon] watching path(s): *.*
[nodemon] watching extensions: js,mjs,json
[nodemon] starting `node server.js`
Listening on port 3000
Connexion à MongoDB réussie !
```

Si vous avez des erreurs, il se peut que les dépendances nécessaire ne soit pas bien installées.
Si vous avez une erreur semblable à :
> ReferenceError: bcrypt is not defined
C'est que la dépendance bcrypt n'est pas installée, vous devez alors entrer la commande
> npm i bcrypt

Si l'erreur vient de la connexion à votre base de données, assurez-vous d'avoir copier le bon lien de connexion et d'avoir remplit le nom d'utilisateur et le mot de passe.

Vérifiez que votre serveur s'est bien lancé en vous connectant depuis votre navigateur sur l'url : http://localhost:3000/
Vous devriez voir apparaître le message "Hello World"

Votre serveur est prêt !

## BASE DE DONNES MONGODB ##

L'IDE VS Code propose une extension permettant de visualiser le contenu de votre base de données, c'est bien pratique pour suivre ce que l'on fait :
Extension > MongoDB for VS Code

Vous aurez ainsi un nouvel onglet dans votre barre latérale représentant le logo en feuille de MongoDB
Via le choix : Connect with Connection String et en utilisant le même lien de connexion à votre base de données que précédemment, vous pourrez vous connecter à votre base de données. Une fois connecté, vous pourrez observez les différentes base de données disponibles et leurs différentes collection.
Le bouton Create New Playground vous permettra d'ouvrir une connexion avec votre base de données et d'interagir avec elle via le langage mongoDB

Essayez par exemple de saisir le code suivant dans la fenêtre qui s'ouvre lorsque vous cliquez sur Create New Playground :
use('formapp');

db.users.insertOne({
    email: 'flutter@gmail.com',
    password : 'flutter'
})

Vous n'avez pas besoin de sauvegarder le code saisi dans le playground.

Cliquez ensuite sur la flèche (triangle) blanche en haut à droite de l'écran.
Un nouvel onglet s'ouvre, vous devriez obtenir quelque chose de semblable à :
{
  "acknowledged": true,
  "insertedId": {
    "$oid": "62813eb22b946e4a85543273"
  }
}

Une nouvelle entrée est ajoutée à votre base de donnée.
Retrouvez là dans l'arborescence de votre connexion dans l'onglet en haut à gauche de l'écran.

Vous pouvez ensuite supprimer cette nouvelle données  via le playground en saisissant les instructions suivantes :
use('formapp');

db.users.deleteOne({
    email: 'flutter@gmail.com'
})

Cette donnée est en effet créée sans utiliser de hash pour le mot de passe qui apparaît donc en clair dans votre base de données.

N'hésitez pas à revenir sur cette écran aussi souvent que nécessaire pour vérifier que les interactions avec votre base de données se passent correctement.

Vous êtes maintenant près à passer au frontend !