import 'package:flutter/material.dart';

class ProductOptions extends StatelessWidget {
  final String option;
  final bool isSelected;

  const ProductOptions({
    super.key,
    required this.option,
    required this.isSelected,
    });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 100,
      height: 40,
      decoration: BoxDecoration(
        color: isSelected ? Colors.green.shade600 : Colors.black,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(width: 1, color: isSelected ? Colors.green.shade600 : Colors.black)
      ),
      child: Text(
        option,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
