import 'package:e_commerce_ui/assets/constant/colors.dart';
import 'package:e_commerce_ui/pages/home_page.dart';
import 'package:e_commerce_ui/pages/inbox_page.dart';
import 'package:e_commerce_ui/pages/profile_page.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  //used to assign the current value of the selected nav bar item
  var selectedNavBarIndex = 0;


  //List of routes
  List<Widget> routes = [
    const HomePage(),
    const InboxPage(),
    const ProfilePage()
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColor().black1,
      bottomNavigationBar: Container(
        margin: const EdgeInsets.only(left: 20, top: 0, right: 20, bottom: 20),
        height: size.width * .155,
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppColor().black1,
          boxShadow: [
            BoxShadow(
              color: AppColor().black.withOpacity(.15),
              blurRadius: 30,
              offset: const Offset(0, 10),
            )
          ],
          borderRadius: BorderRadius.circular(50),
        ),
        child: ListView.builder(
          padding: EdgeInsets.symmetric(horizontal: size.width * 0.024),
          itemCount: 3,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => InkWell(
            onTap: () {
              setState(() {
                selectedNavBarIndex = index;
              });
            },
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AnimatedContainer(
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.fastLinearToSlowEaseIn,
                  margin: EdgeInsets.only(
                    bottom:
                        index == selectedNavBarIndex ? 0 : size.width * .010,
                    right: size.width * .0844,
                    left: size.width * .0844,
                  ),
                  width: size.width * .128,
                  height: index == selectedNavBarIndex ? size.width * .012 : 0,
                  decoration: BoxDecoration(
                    color: HexColor('#6C63FF'),
                    borderRadius: BorderRadius.vertical(
                      bottom: Radius.circular(10)
                    )
                  ),
                ),
                Icon(
                  BottomNavBarItem[index],
                  size: size.width * .076,
                  color: index == selectedNavBarIndex
                      ? HexColor('#6C63FF')
                      : HexColor('#9393a5'),
                ),
                // BottomNavBarLabel[index],
                SizedBox(
                  height: size.width * 0.03,
                )
              ],
            ),
          ),
        ),
      ),
      body: routes.elementAt(selectedNavBarIndex),
    );
  }
  // ignore: non_constant_identifier_names
  List<IconData> BottomNavBarItem = [
    Icons.home_rounded,
    Icons.message_outlined,
    Icons.person_outline_outlined
  ];

  // ignore: non_constant_identifier_names
  List BottomNavBarLabel = [
    const Text('Home'),
    const Text('Inbox'),
    const Text('Profile')
  ];
}
