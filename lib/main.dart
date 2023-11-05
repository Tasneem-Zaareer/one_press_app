import 'package:flutter/material.dart';
import 'package:home_controller_app/features/home/presentation/views/home_view.dart';

import 'features/bottom_navigation_bar/presentation/views/nav_bar_view.dart';

void main() {
  runApp(const OnePressApp());
}

class OnePressApp extends StatelessWidget {
  const OnePressApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'One Press',
      theme: ThemeData(
        //primarySwatch: Colors.red,
        //primaryColor: Colors.yellow,
      ),
      debugShowCheckedModeBanner: false,
      home:  BottomNavBar(),
    );
  }
}


