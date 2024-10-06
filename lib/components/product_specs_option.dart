import 'package:e_commerce_ui/assets/constant/colors.dart';
import 'package:flutter/material.dart';

class ProductSpecificationOption extends StatelessWidget {
  final String availableSpecs;
  const ProductSpecificationOption({super.key, required this.availableSpecs});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
            border: Border.all(color: AppColor().black, width: 1),
            borderRadius: BorderRadius.circular(10)),
        child: Text(
          availableSpecs,
          style: TextStyle(
              color: AppColor().black, fontSize: 16, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
