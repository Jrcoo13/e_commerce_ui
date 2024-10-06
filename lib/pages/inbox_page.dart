import 'package:e_commerce_ui/assets/constant/colors.dart';
import 'package:e_commerce_ui/components/plain_icon.dart';
import 'package:e_commerce_ui/components/tile/inbox_tile.dart';
import 'package:e_commerce_ui/pages/cart_page.dart';
import 'package:e_commerce_ui/pages/messages_page.dart';
import 'package:flutter/material.dart';

class InboxPage extends StatelessWidget {
  const InboxPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor().black1,
      appBar: AppBar(
        backgroundColor: AppColor().black1,
        automaticallyImplyLeading: false,
        leading: null,
        title: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Row(
            children: [
              Text('Inbox',
                  style: TextStyle(
                    fontSize: 22,
                    color: AppColor().white,
                    fontWeight: FontWeight.w400,
                  )),
            ],
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: PlainIcon(
                    icon: './lib/assets/icons/chat.png',
                    size: 46,
                    color: AppColor().white,
                    onTap: () =>  Navigator.push(context, MaterialPageRoute(builder: (s) => MessagesPage())),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: PlainIcon(
                      icon: './lib/assets/icons/cart.png',
                      size: 46,
                      color: AppColor().white,
                      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (s) => CartPage())),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            height: 730,
            width: double.infinity,
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: 10,
              itemBuilder: (context, index) => const InboxTile(headerText: 'Order Received', infoText: 'Lorem lorem lorem lorem lorem lorem lorem lorem lorem Lorem lorem lorem lorem lorem lorem lorem lorem lorem', date: '9/1'),
            ),
          )
        ],
      ),
    );
  }
}
