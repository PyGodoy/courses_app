import 'package:flutter/material.dart';
import 'notifications_screen.dart';

class NotificationsRouter {
  static Route<dynamic> route() {
    return MaterialPageRoute(
      builder: (_) => NotificationsScreen(),
    );
  }
}
