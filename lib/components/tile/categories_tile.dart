import 'package:e_commerce_ui/utils/categories.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CategoriesTile extends StatelessWidget {
  Categories categories;
  
  CategoriesTile({
    super.key,
    required this.categories
    });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Container(
        height: 50,
        decoration: BoxDecoration(
            color: categories.backgroundColor,
            borderRadius: BorderRadius.circular(10),
            // border: Border.all(color: AppColor().lightgrey1, width: 1)
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 20, top: 5, right: 20, bottom: 5),
            child: Text(
              categories.label,
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: categories.foregroundColor),
            ),
          ),
        ),
      ),
    );
  }
}
