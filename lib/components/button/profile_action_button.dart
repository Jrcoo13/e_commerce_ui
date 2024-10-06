import 'package:e_commerce_ui/assets/constant/colors.dart';
import 'package:flutter/material.dart';

class ProfileActionButton extends StatelessWidget {
  final IconData leading;
  final String label;
  final onTap;

  const ProfileActionButton({
    super.key,
    required this.leading,
    required this.label,
    required this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
              color: AppColor().black2, borderRadius: BorderRadius.circular(12),
              border: Border.all(width: 1, color: AppColor().black3)
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(leading, color: AppColor().white, size: 20),
                  const SizedBox(width: 15),
                  Text(label,
                      style: TextStyle(
                        color: AppColor().white,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      )),
                ],
              ),
              Icon(Icons.arrow_forward_ios_rounded,
                  color: AppColor().white, size: 18),
            ],
          ),
        ),
      ),
    );
  }
}
