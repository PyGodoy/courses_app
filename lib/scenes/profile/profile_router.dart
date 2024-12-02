import 'package:courses_app/scenes/login/login_factory.dart';
import 'package:courses_app/scenes/notifications/notifications_factory.dart';
import 'package:courses_app/scenes/profile/profile_factory.dart';
import 'package:flutter/material.dart';
import 'package:courses_app/scenes/profile/profile_screen.dart';
import 'package:courses_app/scenes/notifications/notifications_screen.dart'; // Importe a tela de Notificações
import 'package:courses_app/scenes/login/login_screen.dart'; // Importe a tela de Login

class ProfileRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/profile':
        return MaterialPageRoute(
          builder: (_) => ProfileFactory.createScreen(),
        );
      case '/notifications': // Adiciona a rota para a tela de notificações
        return MaterialPageRoute(
          builder: (_) => NotificationsFactory.createScreen(),
        );
      case '/login': // Adiciona a rota para a tela de login
        return MaterialPageRoute(
          builder: (_) => LoginFactory.createScreen(),
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
