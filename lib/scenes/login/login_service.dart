class LoginService {
  Future<bool> authenticate(String email, String password) async {
    // Simula um delay para dar a sensação de autenticação
    await Future.delayed(const Duration(seconds: 2));

    // Valida se ambos email e senha foram preenchidos
    if (email.isNotEmpty && password.isNotEmpty) {
      return true; // Sucesso
    } else {
      return false; // Falha
    }
  }
}
