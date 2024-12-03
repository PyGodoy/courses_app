import 'package:courses_app/DesignSystem/components/bottom_navigation/bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

class BottomNavigationBarSampleScreen extends StatefulWidget {
  const BottomNavigationBarSampleScreen({Key? key}) : super(key: key);

  @override
  State<BottomNavigationBarSampleScreen> createState() =>
      _BottomNavigationBarSampleScreenState();
}

class _BottomNavigationBarSampleScreenState
    extends State<BottomNavigationBarSampleScreen> {
  int _currentIndex = 0;

  // Lista de telas correspondentes às opções do BottomNavigationBar
  final List<Widget> _screens = [
    const Center(child: Text('Home Screen')),
    const Center(child: Text('Notifications Screen')),
    const Center(child: Text('Profile Screen')),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bottom Navigation Bar Sample'),
        backgroundColor: Colors.blueAccent,
      ),
      body: _screens[_currentIndex],
      bottomNavigationBar: CustomBottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
