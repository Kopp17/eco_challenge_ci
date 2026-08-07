import 'package:flutter/material.dart';

import '../models/user_model.dart';

class AuthProvider extends ChangeNotifier {
  UserModel? _user;

  UserModel? get user => _user;

  bool get isLoggedIn => _user != null;

  void login(UserModel user) {
    _user = user;

    notifyListeners();
  }

  void logout() {
    _user = null;

    notifyListeners();
  }

  void updatePoints(int points) {
    if (_user == null) return;

    _user = UserModel(
      id: _user!.id,

      name: _user!.name,

      email: _user!.email,

      quartier: _user!.quartier,

      points: points,

      level: _getLevel(points),
    );

    notifyListeners();
  }

  String _getLevel(int points) {
    if (points >= 1000) {
      return "Ambassadeur 🌳";
    }

    if (points >= 500) {
      return "Protecteur 🌿";
    }

    return "Débutant 🌱";
  }
}
