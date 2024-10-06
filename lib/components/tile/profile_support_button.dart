import 'package:e_commerce_ui/assets/constant/colors.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ProfileSupportTile extends StatelessWidget {
  final IconData leadIcon;
  final String label;
  final IconData actionIcon;
  Function(BuildContext)? onClick;

  ProfileSupportTile({
    super.key,
    required this.leadIcon,
    required this.label,
    required this.actionIcon,
    required this.onClick
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15, bottom: 15),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppColor().black2,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Padding(
          padding: const EdgeInsets.all(18),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                leadIcon,
                color: AppColor().white,
                size: 20
              ),
              const SizedBox(width: 10),
              Text(
                label,
                style: TextStyle(
                  color: AppColor().white,
                  fontSize: 15,
                ),
              ),
                ],
              ),
              Icon(
                actionIcon,
                color: AppColor().white,
                size: 15
              )
            ],
          ),
        ),
      ),
    );
  }
}