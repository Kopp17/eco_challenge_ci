import '../../models/user_model.dart';

class AuthService {
  UserModel? _currentUser;

  UserModel? get currentUser => _currentUser;

  Future<UserModel> login({
    required String email,

    required String password,
  }) async {
    // Simulation temporaire
    // Firebase sera ajouté plus tard

    _currentUser = UserModel(
      id: "1",

      name: "Utilisateur",

      email: email,

      quartier: "Abidjan",

      points: 0,

      level: "Débutant 🌱",
    );

    return _currentUser!;
  }

  Future<void> logout() async {
    _currentUser = null;
  }
}
