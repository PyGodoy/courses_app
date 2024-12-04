import 'package:courses_app/scenes/home/home_factory.dart';
import 'package:courses_app/scenes/notifications/notifications_factory.dart';
import 'package:courses_app/scenes/profile/profile_factory.dart';
import 'package:flutter/material.dart';

class HomeRouter {
  static Route<dynamic> route(String routeName) {
    switch (routeName) {
      case '/home':
        return MaterialPageRoute(
          builder: (_) => HomeFactory.createScreen(),
        );
      case '/notifications':
        return MaterialPageRoute(
          builder: (_) => NotificationsFactory.createScreen(),
        );
      case '/profile':
        return MaterialPageRoute(
          builder: (_) => ProfileFactory.createScreen(),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => HomeFactory.createScreen(), // Fallback caso a rota não exista
        );
    }
  }
}
