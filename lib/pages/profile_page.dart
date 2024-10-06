import 'package:e_commerce_ui/assets/constant/colors.dart';
import 'package:e_commerce_ui/components/button/profile_action_button.dart';
import 'package:e_commerce_ui/components/icon/my_wallet_icon.dart';
import 'package:e_commerce_ui/components/plain_icon.dart';
import 'package:e_commerce_ui/components/tile/wallet_tile.dart';
import 'package:e_commerce_ui/pages/cart_page.dart';
import 'package:e_commerce_ui/pages/settings_page.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
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
              Text('Profile',
                  style: TextStyle(
                      fontSize: 22,
                      color: AppColor().white,
                      fontWeight: FontWeight.w400)),
            ],
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: PlainIcon(
                    icon: 'lib/assets/icons/settings.png',
                    size: 46,
                    color: AppColor().white,
                    onTap: () => Navigator.push(context, MaterialPageRoute(builder: (s) => ProfileSettingsPage())),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: PlainIcon(
                    icon: 'lib/assets/icons/cart.png',
                    size: 46,
                    color: AppColor().white,
                    onTap: () => Navigator.push(context, MaterialPageRoute(builder: (s) => CartPage()))
                  ),
                ),
              ],
            ),
          )
        ],
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Column(
            children: [
              //profile container
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
                child: GestureDetector(
                  onTap: () => {
                    print('Profile was clicked')
                  },
                  child: Container(
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: AppColor().black2,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        //profile picture
                        Row(
                          children: [
                            Container(
                              height: 60,
                              decoration: BoxDecoration(
                                color: AppColor().white,
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(50),
                                child: Image.asset(
                                  'lib/assets/images/user.png',
                                  height: 50,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            const SizedBox(width: 20),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                //name
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 3),
                                  child: Text('Jerico Ocal',
                                      style: TextStyle(
                                          color: AppColor().white,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600)),
                                ),
                                //badge
                                Text('jrcoocl03@gmail.com',
                                    style: TextStyle(
                                        color: Colors.grey.shade400,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                          ],
                        ),
                        //profile arrow icon
                        Icon(Icons.arrow_forward_ios_outlined,
                            color: AppColor().white, size: 18),
                      ],
                    ),
                  ),
                ),
              ),
              //wallet tile
              Container(
                width: double.infinity,
                height: 173,
                child: PageView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (context, index) => const WalletTile(),
                ),
              ),
              //My Orders
              Padding(
                padding: const EdgeInsets.only(left: 20, bottom: 20, right: 20),
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(20.0),
                  decoration: BoxDecoration(
                    color: AppColor().black2,
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(width: 1, color: AppColor().black3)
                  ),
                  child: Column(
                    children: [
                      //my orders header
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'My Orders',
                            style: TextStyle(
                              color: AppColor().white,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            'View All',
                            style: TextStyle(
                              color: AppColor().white,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 30,),
                      // My orders icons
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          MyWalletIcon(label: 'Pending', icon: Icons.pending_actions, onTap: () => {}),
                          MyWalletIcon(label: 'Processing', icon: Icons.wifi_protected_setup_sharp, onTap: () => {}),
                          MyWalletIcon(label: 'Shipped', icon: Icons.shopping_cart_outlined, onTap: () => {}),
                          MyWalletIcon(label: 'Review', icon: Icons.reviews_outlined, onTap: () => {}),
                          MyWalletIcon(label: 'Preorder', icon: Icons.shop_2_outlined, onTap: () => {}),
                        ],
                      )
                    ],
                  )
                ),
              ),
              //action button
              Column(
                children: [
                  ProfileActionButton(
                    leading: Icons.person_outline_outlined, 
                    label: 'Edit Profile',
                    onTap: () => {
                      print('Edit Profile'),
                    }
                  ),
                  ProfileActionButton(
                    leading: Icons.notification_important_outlined, 
                    label: 'Notification Settings', 
                    onTap: () => {
                      print('Notification Settings')
                    }
                  ),
                  ProfileActionButton(
                    leading: Icons.privacy_tip_outlined, 
                    label: 'Privacy Policy',
                    onTap: () => {
                      print('Privacy Policy'),
                    }
                  ),
                  ProfileActionButton(
                    leading: Icons.settings_accessibility,
                    label: 'Terms and Conditions',
                    onTap: () => {
                      print('Terms and Conditions')
                    },
                  ),
                  ProfileActionButton(
                    leading: Icons.logout,
                    label: 'Log out',
                    onTap: () => {
                      print('Logged out')
                    },
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
