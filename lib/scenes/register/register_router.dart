import 'package:courses_app/scenes/login/login_factory.dart';
import 'package:courses_app/scenes/register/register_factory.dart';
import 'package:courses_app/scenes/register/register_screen.dart';
import 'package:courses_app/scenes/login/login_screen.dart'; // Importe a tela de login
import 'package:flutter/material.dart';

class RegisterRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/register':
        return MaterialPageRoute(
          builder: (_) => RegisterFactory.createScreen(),
          settings: settings,
        );
      case '/login':
        return MaterialPageRoute(
          builder: (_) => LoginFactory.createScreen(), // Rota de login
          settings: settings,
        );
      default:
        return MaterialPageRoute(
          builder: (_) => const Scaffold(
            body: Center(child: Text('Rota não encontrada.')),
          ),
        );
    }
  }
}
