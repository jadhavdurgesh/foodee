import 'package:flutter/material.dart';
import 'package:foodee/constants/colors.dart';
import 'package:foodee/constants/constants.dart';
import 'package:foodee/controller/bottom_index_controller.dart';
import 'package:foodee/views/cart/cart_screen.dart';
import 'package:foodee/views/home/home_screen.dart';
import 'package:foodee/views/profile/profile_screen.dart';
import 'package:get/get.dart';

import 'search/search_screen.dart';

class MainScreen extends StatelessWidget {
  MainScreen({super.key});

  List<Widget> pageList = const [
    HomeScreen(),
    SearchScreen(),
    CartScreen(),
    ProfileScreen()
  ];

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(BottomIndexController());
    int value = 0;
    return Obx(
      () => Scaffold(
        backgroundColor: kOffWhite,
        body: Stack(
          children: [
            pageList[controller.index],
            Align(
              alignment: Alignment.bottomCenter,
              child: BottomNavigationBar(
                onTap: (value) {
                  controller.setBottomIndex = value;
                },
                elevation: 0,
                type: BottomNavigationBarType.fixed,
                currentIndex: controller.index,
                items: [
                  BottomNavigationBarItem(
                      icon: controller.index == 0
                          ? Image.asset(
                              'assets/images/icons/home_filled.png',
                              height: 24,
                            )
                          : Image.asset(
                              'assets/images/icons/home_outline.png',
                              height: 24,
                            ),
                      label: 'Home'),
                  BottomNavigationBarItem(
                      icon: controller.index == 1
                          ? Image.asset(
                              'assets/images/icons/search_filled.png',
                              height: 24,
                            )
                          : Image.asset(
                              'assets/images/icons/search_outline.png',
                              height: 24,
                            ),
                      label: 'Search'),
                  BottomNavigationBarItem(
                      icon: controller.index == 2
                          ? Image.asset(
                              'assets/images/icons/cart_filled.png',
                              height: 24,
                            )
                          : Image.asset(
                              'assets/images/icons/cart_outline.png',
                              height: 24,
                            ),
                      label: 'Cart'),
                  BottomNavigationBarItem(
                      icon: controller.index == 3
                          ? Image.asset(
                              'assets/images/icons/profile_filled.png',
                              height: 24,
                            )
                          : Image.asset(
                              'assets/images/icons/profile_outline.png',
                              height: 24,
                            ),
                      label: 'Profile'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
