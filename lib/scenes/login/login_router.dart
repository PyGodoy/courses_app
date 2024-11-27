import 'package:courses_app/scenes/home/home_screen.dart';
import 'package:courses_app/scenes/login/login_screen.dart';
import 'package:flutter/material.dart';

class LoginRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/login':
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case '/home':
        return MaterialPageRoute(builder: (_) => const HomeScreen()); // Rota da HomeScreen
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('No route defined for ${settings.name}')),
          ),
        );
    }
  }
}
