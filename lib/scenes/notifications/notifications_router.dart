import 'package:courses_app/scenes/notifications/notifications_factory.dart';
import 'package:flutter/material.dart';

class NotificationsRouter {
  static Route<dynamic> route() {
    return MaterialPageRoute(
      builder: (_) => NotificationsFactory.createScreen(),
    );
  }
}
