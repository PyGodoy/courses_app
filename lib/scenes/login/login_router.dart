import 'package:courses_app/scenes/home/home_factory.dart';
import 'package:courses_app/scenes/login/login_factory.dart';
import 'package:courses_app/scenes/register/register_factory.dart';
import 'package:flutter/material.dart';

class LoginRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/login':
        return MaterialPageRoute(builder: (context) => LoginFactory.createScreen());
      case '/home':
        return MaterialPageRoute(builder: (context) => HomeFactory.createScreen()); // Rota da HomeScreen
      case '/register':
        return MaterialPageRoute(builder: (context) => RegisterFactory.createScreen()); // Rota da HomeScreen
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('No route defined for ${settings.name}')),
          ),
        );
    }
  }
}
