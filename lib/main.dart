import 'package:courses_app/DesignSystem/colors/app_colors.dart';
import 'package:courses_app/scenes/home/home_screen.dart';
import 'package:courses_app/scenes/initialscreen/initial_screen.dart';
import 'package:courses_app/scenes/login/login_screen.dart';
import 'package:courses_app/scenes/notifications/notifications_screen.dart';
import 'package:courses_app/scenes/profile/profile_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Modular App',
      theme: ThemeData(
        primaryColor: AppColors.primary,
        fontFamily: 'Roboto',
      ),
      initialRoute: '/',
      routes: {
      '/': (context) => const InitialScreen(), // Rota inicial renomeada
      '/login': (context) => const LoginScreen(),
      '/home': (context) => const HomeScreen(),
      '/notifications': (context) => const NotificationsScreen(),
      '/profile': (context) => const ProfileScreen(),
      },
    );
  }
}
