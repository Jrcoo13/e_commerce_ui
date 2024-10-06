import 'package:e_commerce_ui/assets/constant/colors.dart';
import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {
  const SearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 332,
          height: 50,
          padding: const EdgeInsets.only(left: 5, right: 5),
          margin: const EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
            color: AppColor().black3,
            borderRadius: BorderRadius.circular(12),
          ),
          child: TextField(
            style: TextStyle(
              fontSize: 16,
              color: AppColor().white,
            ),
            decoration: InputDecoration(
              hintText: 'Search',
              hintStyle: TextStyle(color: AppColor().white),
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
              ),
            ),
          ),
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Container(
            height: 48,
            decoration: BoxDecoration(color: AppColor().black3),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Image.asset('lib/assets/icons/filter.png', height: 48, color: AppColor().white),
            ),
          ),
        ),
      ],
    );
  }
}
