import 'package:e_commerce_ui/assets/constant/colors.dart';
import 'package:flutter/material.dart';

class SettingsActionButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final Function()? onTap;

  const SettingsActionButton({
    super.key,
    required this.icon,
    required this.label,
    required this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
            padding: const EdgeInsets.all(20),
            width: double.infinity,
            height: 60,
            decoration: BoxDecoration(
              color: AppColor().black2,
              borderRadius: BorderRadius.circular(10),
            ),
            child:
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Row(
                children: [
                  Icon(
                    icon,
                    color: AppColor().white,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(label,
                      style: TextStyle(fontSize: 15, color: AppColor().white)),
                ],
              ),
              Icon(Icons.arrow_forward_ios_outlined,
                  size: 18, color: AppColor().white),
            ])),
      ),
    );
  }
}
