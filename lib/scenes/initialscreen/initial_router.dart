import 'package:courses_app/scenes/initialscreen/initial_screen.dart';
import 'package:courses_app/scenes/login/login_router.dart';
import 'package:flutter/material.dart';

class InitialRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/initial':
        return MaterialPageRoute(builder: (_) => const InitialScreen());
      case '/initial/login':
        return LoginRouter.generateRoute(
          const RouteSettings(name: '/login'),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('No route defined for ${settings.name}')),
          ),
        );
    }
  }
}
