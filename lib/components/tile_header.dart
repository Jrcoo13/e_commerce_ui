import 'package:e_commerce_ui/assets/constant/colors.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TileHeader extends StatelessWidget {
  final String title;
  final String action;

  const TileHeader({
    super.key,
    required this.title,
    required this.action
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // label
        Text(
          title,
          style: TextStyle(
            color: AppColor().white,
            fontWeight: FontWeight.w500,
            fontSize: 20,
          ),
        ),
        // see all with icon
        Row(
          children: [
            Text(
              action,
              style: TextStyle(
                color: AppColor().white,
                fontWeight: FontWeight.w500,
                fontSize: 16,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Container(
                height: 30,
                decoration: BoxDecoration(color: AppColor().black3),
                padding: const EdgeInsets.all(8),
                child: Icon(
                  Icons.arrow_forward_ios,
                  size: 15,
                  color: AppColor().white,
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}
