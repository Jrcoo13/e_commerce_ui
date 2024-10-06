import 'package:e_commerce_ui/assets/constant/colors.dart';
import 'package:flutter/material.dart';

class ProfileMoreActivitiesTile extends StatelessWidget {
  const ProfileMoreActivitiesTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 195,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: AppColor().black2, borderRadius: BorderRadius.circular(10)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(
                Icons.heart_broken,
                color: AppColor().white,
              ),
              const SizedBox(width: 10),
              Text(
                'My Likes',
                style: TextStyle(color: AppColor().white),
              ),
            ],
          ),
          Icon(
            Icons.arrow_forward_ios_rounded,
            color: AppColor().white,
            size: 14,
          )
        ],
      ),
    );
  }
}
