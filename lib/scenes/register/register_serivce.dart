import 'dart:async';

class RegisterService {
  /// Método para simular o registro de um novo usuário.
  Future<bool> register(String email, String password) async {
    // Simula um delay para dar a sensação de processamento
    await Future.delayed(const Duration(seconds: 2));

    // Valida se o email e a senha foram preenchidos e se a senha é forte
    if (email.isNotEmpty && password.isNotEmpty && password.length >= 6) {
      return true; // Registro bem-sucedido
    } else {
      return false; // Falha no registro
    }
  }
}
