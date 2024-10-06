import 'package:flutter/material.dart';

class ProductColorRoundPicker extends StatelessWidget {
  final Color color;
  final isSelected;

  const ProductColorRoundPicker({super.key, required this.color, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 5),
      child: Container(
        padding: const EdgeInsets.all(2),
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(50),
          border: Border.all(color: isSelected ? color : Colors.transparent, width: 2),
        ),
        child: Container(
          height: 30,
          width: 30,
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(50),
          ),
        ),
      ),
    );
  }
}
