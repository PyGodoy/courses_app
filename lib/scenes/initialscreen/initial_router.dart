import 'package:courses_app/scenes/initialscreen/initial_factory.dart';
import 'package:courses_app/scenes/register/register_router.dart';
import 'package:flutter/material.dart';

class InitialRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/initial':
        return MaterialPageRoute(builder: (context) => InitialFactory.createScreen());
      case '/initial/register':
        return RegisterRouter.generateRoute(
          const RouteSettings(name: '/register'),
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
