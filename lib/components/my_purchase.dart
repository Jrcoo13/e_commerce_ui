import 'package:e_commerce_ui/assets/constant/colors.dart';
import 'package:flutter/material.dart';

class MyPurchase extends StatelessWidget {
  final String imagePath;
  final String label;

  const MyPurchase({
    super.key,
    required this.imagePath,
    required this.label
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90,
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: AppColor().black2,
              borderRadius: BorderRadius.circular(15)
            ),
            child: Container(
              decoration: BoxDecoration(
                color: AppColor().black2,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Image.asset('lib/assets/images/user.png'))),
          const SizedBox(height: 10),
          Text(
            label,
            style: TextStyle(color: AppColor().white),
          ),
        ],
      ),
    );
  }
}
