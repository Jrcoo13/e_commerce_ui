import 'package:e_commerce_ui/assets/constant/colors.dart';
import 'package:flutter/material.dart';

class InboxTile extends StatelessWidget {
  final String headerText;
  final String infoText;
  final String date;

  const InboxTile({
    super.key,
    required this.headerText,
    required this.infoText,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColor().black1,
        border: Border(
          bottom: BorderSide(
            color: AppColor().black3, 
            width: 0.8))
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 20, right: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: AppColor().PRIMARY_COLOR,
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(width: 0.8, color: AppColor().PRIMARY_COLOR),
                  ),
                  child: Image.asset('./lib/assets/icons/chat.png',
                      height: 20, color: AppColor().white),
                ),
                const SizedBox(width: 20),
                Row(
                  children: [
                    Text(
                      headerText,
                      style: TextStyle(
                          fontSize: 16,
                          color: AppColor().white,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 83),
            child: Row(
              children: [
                SizedBox(
                  width: 320,
                  child: Text(
                    maxLines: 3,
                    infoText,
                    style: TextStyle(
                        fontSize: 16,
                        color: AppColor().white,
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 83, bottom: 20),
            child: Row(
              children: [
                Text(date,
                    style: TextStyle(
                        color: AppColor().white,
                        fontSize: 16,
                        fontWeight: FontWeight.w400
                    ),
                  ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
