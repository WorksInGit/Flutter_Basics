

import 'package:flutter/material.dart';
import 'package:flutter_basics/flutter_basics/shared_preference.dart';

import 'ui_car_rent/bottom_nav.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Basics',
      home: SharedPreference(),
    );
  }
}