import 'package:courses_app/scenes/initialscreen/initial_factory.dart';
import 'package:courses_app/scenes/login/login_factory.dart';
import 'package:flutter/material.dart';

class InitialRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/initial':
        return MaterialPageRoute(builder: (context) => InitialFactory.createScreen());
      case '/initial/login':
        return MaterialPageRoute(builder: (context) => LoginFactory.createScreen());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('No route defined for ${settings.name}')),
          ),
        );
    }
  }
}
