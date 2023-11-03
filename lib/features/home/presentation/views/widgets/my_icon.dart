import 'package:flutter/material.dart';

class MyIcon extends StatelessWidget {
  const MyIcon({
    super.key,
    required this.imagePath,
    //required this.imageHeight,
  });

  final String imagePath;
  //final double imageHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: const Color(0xffd4cbb9),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Image.asset(
        imagePath,
        color: const Color(0xff2d2a26),
        height: 30,
      ),
    );
  }
}
