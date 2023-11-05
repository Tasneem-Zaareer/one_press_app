import 'package:flutter/material.dart';

class TabStyle extends StatelessWidget {
  const TabStyle({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Tab(
      height: 35,
      child: Text(
        text,
      ),
    );
  }
}
