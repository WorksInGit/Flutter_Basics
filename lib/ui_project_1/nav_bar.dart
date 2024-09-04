import 'package:flutter/material.dart';
import 'package:flutter_basics/ui_project_1/home.dart';
import 'package:flutter_basics/ui_project_1/notification.dart';
import 'package:flutter_basics/ui_project_1/payment.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _selectedIndex = 0;
  static List<dynamic> _widgetOption = [
      Home(),
      Payment(),
      MyNotification()
    ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOption.elementAt(_selectedIndex),
      bottomNavigationBar:
            BottomNavigationBar(
              currentIndex: _selectedIndex,
              onTap: _onItemTapped,
              unselectedItemColor: Colors.black,
              selectedItemColor: Colors.blue,
              items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.payment), label: 'Payment'),
          BottomNavigationBarItem(
              icon: Icon(Icons.message), label: 'Notification')
        ]),
    );
  }
}