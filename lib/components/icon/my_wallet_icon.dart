import 'package:e_commerce_ui/assets/constant/colors.dart';
import 'package:flutter/material.dart';

class MyWalletIcon extends StatelessWidget {
  final String label;
  final IconData icon;
  final VoidCallback onTap;

  MyWalletIcon({super.key, required this.label, required this.icon, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          GestureDetector(
            child: GestureDetector(
              onTap: () => onTap,
              child: Icon(
                icon,
                color: AppColor().white,
                size: 30,
              ),
            ),
          ),
          const SizedBox(height: 5),
          Text(
            label,
            style: TextStyle(
              color: AppColor().white,
              fontSize: 14
            ),
          ),
        ],
      ),
    );
  }
}