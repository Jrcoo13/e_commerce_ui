import 'package:flutter/material.dart';

class BottomNavBarItem extends StatelessWidget {
  final String image;
  final Color color;
  final double size;
  final String label;

  const BottomNavBarItem({
    super.key,
    required this.image,
    required this.color,
    required this.size,
    required this.label
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 70,
      height: 50,
      child: Column(
        children: [
          Image.asset(image,
              height: size, color: color),
          Text(label,
              style: TextStyle(
                color: color,
              )),
        ],
      ),
    );
  }
}
