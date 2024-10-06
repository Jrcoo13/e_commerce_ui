import 'package:e_commerce_ui/assets/constant/colors.dart';
import 'package:flutter/material.dart';

class WalletTile extends StatelessWidget {
  const WalletTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, top: 10, right: 20, bottom: 20),
      child: Container(
        width: double.infinity,
        height: 173,
        decoration: BoxDecoration(
            color: HexColor('#6f63ff'),
            borderRadius: BorderRadius.circular(15)),
        //tile content
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              //tile header
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Balance',
                    style: TextStyle(
                        color: AppColor().white,
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Row(
                  children: [
                    Text(
                      '₱10,589.00',
                      style: TextStyle(
                          color: AppColor().white,
                          fontSize: 26,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
