import 'package:courses_app/scenes/notifications/notifications_screen.dart';
import 'package:courses_app/scenes/profile/profile_screen.dart';
import 'package:flutter/material.dart';
import 'home_screen.dart';

class HomeRouter {
  static Route<dynamic> route(String routeName) {
    switch (routeName) {
      case '/home':
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(),
        );
      case '/notifications':
        return MaterialPageRoute(
          builder: (_) => const NotificationsScreen(),
        );
      case '/profile':
        return MaterialPageRoute(
          builder: (_) => const ProfileScreen(),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(), // Fallback caso a rota não exista
        );
    }
  }
}
