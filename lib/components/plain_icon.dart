import 'package:e_commerce_ui/assets/constant/colors.dart';
import 'package:flutter/material.dart';

class PlainIcon extends StatelessWidget {
  final double size;
  final String icon;
  final Color color;
  final Function()? onTap;

  const PlainIcon(
  {
    super.key, 
    required this.icon, 
    required this.size, 
    required this.color,
    required this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: size,
          decoration: BoxDecoration(color: AppColor().black3),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Image.asset(icon,
                height: size, color: color),
          ),
        ),
      ),
    );
  }
}
