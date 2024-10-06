import 'package:e_commerce_ui/assets/constant/colors.dart';
import 'package:flutter/material.dart';

class ReviewContainer extends StatelessWidget {
  final Icon icon;
  final double iconSize;
  final Color iconColor;
  final double data;
  final int? reviews;

  const ReviewContainer(
      {super.key,
      required this.icon,
      required this.iconSize,
      required this.iconColor,
      required this.data,
      required this.reviews
      });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          // border: Border.all(color: iconColor, width: 1),
          color: AppColor().black3),
      child: Row(
        children: [
          Icon(icon.icon, size: iconSize, color: iconColor),
          const SizedBox(
            width: 5,
          ),
          Text(data.toString(),
              style: TextStyle(
                  color: AppColor().white,
                  fontSize: 15,
                  fontWeight: FontWeight.w600)),
          const SizedBox(
            width: 10,
          ),
          //product reviews
          Text(
            reviews == 0 ? '' : '${reviews.toString()} reviews',
              style: TextStyle(
                  color: AppColor().white,
                  fontSize: 14,
                  fontWeight: FontWeight.w600)),
        ],
      ),
    );
  }
}
