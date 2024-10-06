import 'package:e_commerce_ui/assets/constant/colors.dart';
import 'package:flutter/material.dart';

class MyOrdersTile extends StatelessWidget {
  final String imagePath;
  final String label;

  const MyOrdersTile({super.key, required this.imagePath, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          //image icon
          Image.asset(imagePath, height: 35, color: AppColor().white,),
          const SizedBox(height: 5),
          //label
          Text(label,
              style: TextStyle(
                color: Colors.white,
                fontSize: 13,
                fontWeight: FontWeight.w600,
              )),
        ],
      ),
    );
  }
}
