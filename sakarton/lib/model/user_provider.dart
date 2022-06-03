import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;

import 'dart:collection'; // nouveaux type de listes comme UnmodifiableListView
import 'dart:convert'; // pour decoder la réponse http

import 'package:sakarton/model/user_model.dart';

// Commandes utiles :
// Lancer le serveur node (attendre le message "connexion ok !")
// backend> npm start

class UserProvider with ChangeNotifier {
  final String host = 'http://localhost:3000';
  List<User> _users = [];

  // Getter pour l'accès en lecture de l'ensemble des profiles
  // Pas de modificiation possible grâce au type UnmodifiableListView
  UnmodifiableListView<User> get users => UnmodifiableListView(_users);

  // Récupérer les données dans la base de données
  void fetchData() async {
    try {
      http.Response response = await http.get(Uri.parse('$host/api/users'));
      if (response.statusCode == 200) {
        _users = (json.decode(response.body) as List)
            .map((userJson) => User.fromJson(userJson))
            .toList();
        notifyListeners();
      }
    } catch (e) {
      rethrow;
    }
  }

  // Récupérer un seul user
  void selectByEmail(email) async {
    try {
      http.Response response =
          await http.get(Uri.parse('$host/api/users/' + email));
      if (response.statusCode == 200) {
        Map<String, dynamic> map = jsonDecode(response.body);
        User user = User.fromJson(map);
        _users.add(user);

        notifyListeners();
      }
    } catch (e) {
      rethrow;
    }
  }

  // Ajouter un profile dans la base de données
  Future<void> addUser(User newUser) async {
    try {
      http.Response response = await http.post(
        Uri.parse('$host/api/users'),
        body: json.encode(newUser.toJson()),
        headers: {'Content-type': 'application/json'},
      );

      if (response.statusCode == 200) {
        print('good');

        _users.add(
          User.fromJson(
            json.decode(response.body),
          ),
        );
        notifyListeners();
      }
    } catch (e) {
      print(e);

      rethrow;
    }
  }

  // Ajouter un profile dans la base de données
  Future<void> updateUser(User newUser, String id) async {
    try {
      http.Response response = await http.patch(
        Uri.parse('$host/api/users/' + id),
        body: json.encode(newUser.toJson()),
        headers: {'Content-type': 'application/json'},
      );
      print(json.encode(newUser.toJson()));
      print(response.body);

      if (response.statusCode == 200) {
        _users.add(
          User.fromJson(
            json.decode(response.body),
          ),
        );
        notifyListeners();
      }
    } catch (e) {
      print(e);

      rethrow;
    }
  }

  Future<String> logUser(String email, String password) async {
    try {
      http.Response response = await http.post(
        Uri.parse('$host/api/users/login'),
        body: json.encode({"email": email, "password": password}),
        headers: {'Content-type': 'application/json'},
      );
      Map<String, dynamic> temp = json.decode(response.body);

      if (response.statusCode == 200) {
        return ("200");
      } else {
        return (temp['error']);
      }
    } catch (e) {
      rethrow;
    }
  }
}
