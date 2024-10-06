import 'package:e_commerce_ui/assets/constant/colors.dart';
import 'package:flutter/material.dart';

class DiscountTile extends StatelessWidget {
  final String imagePath;

  const DiscountTile({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: 390,
          height: 150,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [AppColor().black, HexColor('#4d4d4d')],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15, top: 15),
                child: Text(
                  'Clearance',
                  style: TextStyle(
                      color: AppColor().white,
                      fontSize: 24,
                      fontWeight: FontWeight.w700),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Text(
                  'Sales',
                  style: TextStyle(
                      color: AppColor().white,
                      fontSize: 24,
                      fontWeight: FontWeight.w700),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, top: 15, bottom: 15),
                child: Container(
                  padding: const EdgeInsets.only(left: 15, top: 8, right: 15, bottom: 8),
                  decoration: BoxDecoration(
                    color: AppColor().white,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Text(
                    'Up to 50%',
                    style: TextStyle(
                        color: AppColor().black,
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              )
            ],
          ),
        ),
        Positioned(
          left: 220,
          top: -12,
          child: SizedBox(
            height: 165,
            child: Image.asset(imagePath),
          ),
        ),
      ],
    );
  }
}
