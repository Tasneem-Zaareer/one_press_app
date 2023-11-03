import 'package:flutter/material.dart';
import 'package:home_controller_app/features/home/presentation/views/home_view.dart';

void main() {
  runApp(const OnePressApp());
}

class OnePressApp extends StatelessWidget {
  const OnePressApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'One Press',
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}


