import 'package:e_commerce_ui/assets/constant/colors.dart';
import 'package:e_commerce_ui/components/button/settings_button_action.dart';
import 'package:flutter/material.dart';

class ProfileSettingsPage extends StatelessWidget {
  const ProfileSettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor().black1,
      appBar: AppBar(
        backgroundColor: AppColor().black1,
        iconTheme: IconThemeData(
          color: AppColor().white,
        ),
        title: Text(
          'Settings',
          style: TextStyle(
            color: AppColor().white,
            fontSize: 22,
            fontWeight: FontWeight.w400,
          )),
      ),
      body: Column(
        children: [
          //settings tile
          Container(
            width: double.infinity,
            child: Column(
              children: [
                SettingsActionButton(icon: Icons.settings, label: 'Account Settings', onTap: () => {},),
                SettingsActionButton(icon: Icons.light_mode_outlined, label: 'Themes', onTap: () => {},),
                SettingsActionButton(icon: Icons.notifications, label: 'Notification Settings', onTap: () => {},),
                SettingsActionButton(icon: Icons.privacy_tip_rounded, label: 'Privacy Policy', onTap: () => {},),
                SettingsActionButton(icon: Icons.privacy_tip_rounded, label: 'Privacy Policy', onTap: () => {},),
              ],
            ),
                    )
        ],
      )
    );
  }
}