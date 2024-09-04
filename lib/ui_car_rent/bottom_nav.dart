import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:flutter_basics/ui_car_rent/home.dart';
import 'package:flutter_basics/ui_car_rent/inbox.dart';
import 'package:flutter_basics/ui_car_rent/profile.dart';
import 'package:flutter_basics/ui_car_rent/wishlist.dart';
import 'package:flutter_basics/watsapp_ui/whatsapp_ui.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  static List<dynamic> _pages = [HomePage(), Wishlist(), Inbox(), Profile()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages.elementAt(_selectedIndex),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30)),
        child: Container(
          height: 50,
          width: 100,
          decoration: BoxDecoration(
              color: Colors.black,
              // borderRadius: BorderRadius.only(
              //     topLeft: Radius.circular(30), topRight: Radius.circular(30))),
          ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _buildNavItem('assets/home_car_ui_icon.png', 0),
                      _buildNavItem('assets/heart_icon.png', 1),
                      _buildNavItem('assets/message_icon.png', 2),
                      _buildNavItem('assets/person_icon.png', 3)
                    ],
                  ),
        ),
      ),
    );
  }
  Widget _buildNavItem(String assetImage ,int index) {
    return GestureDetector(
      onTap: () => _onItemTapped(index),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(color: Colors.black,image: DecorationImage(image: AssetImage(assetImage))),
              )
            ],
          )
        ],
      ),

    );
  }
}
