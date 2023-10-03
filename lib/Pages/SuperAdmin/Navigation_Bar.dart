import 'package:bank_sampahad/Pages/Penimbang/Beranda.dart';
import 'package:bank_sampahad/Pages/Penimbang/Profile.dart';
import 'package:bank_sampahad/Pages/Penimbang/Statistic.dart';
import 'package:bank_sampahad/Pages/SuperAdmin/Profile.dart';
import 'package:bank_sampahad/Pages/SuperAdmin/Statistik.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

import 'Beranda.dart';

class BarNavigationSuperAdmin extends StatelessWidget {
  const BarNavigationSuperAdmin({super.key});

  @override
  Widget build(BuildContext context) {
    PersistentTabController _controller;

    _controller = PersistentTabController(initialIndex: 0);

    List<Widget> _buildScreens() {
      return [
        BerandaSuperAdmin(),
        StatisticSuperAdminScreen(),
        ProfileSuperAdminScreen()
      ];
    }

    List<PersistentBottomNavBarItem> _navBarsItems() {
      return [
        PersistentBottomNavBarItem(
          icon: Icon(
            Icons.home_rounded,
          ),
          title: ("Beranda"),
          textStyle: TextStyle(
            color: Color(0xFF333333),
            fontSize: 10,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w700,
          ),
          activeColorPrimary: Color(0xFF2A9235),
          activeColorSecondary: Color(0xFF2A9235),
          inactiveColorPrimary: CupertinoColors.black,
        ),
        PersistentBottomNavBarItem(
          icon: Icon(Icons.assessment_outlined),
          title: ("Statistic"),
          textStyle: TextStyle(
            color: Color(0xFF333333),
            fontSize: 10,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w700,
          ),
          activeColorPrimary: Color(0xFF2A9235),
          activeColorSecondary: Color(0xFF2A9235),
          inactiveColorPrimary: CupertinoColors.black,
        ),
        PersistentBottomNavBarItem(
          icon: Icon(Icons.account_circle_outlined),
          title: ("Profile"),
          textStyle: TextStyle(
            color: Color(0xFF333333),
            fontSize: 10,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w700,
          ),
          activeColorPrimary: Color(0xFF2A9235),
          activeColorSecondary: Color(0xFF2A9235),
          inactiveColorPrimary: CupertinoColors.black,
        ),
      ];
    }

    return PersistentTabView(
      context,
      controller: _controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      confineInSafeArea: true,
      backgroundColor: Colors.white, // Default is Colors.white.
      handleAndroidBackButtonPress: true, // Default is true.
      resizeToAvoidBottomInset:
          true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
      stateManagement: true, // Default is true.
      hideNavigationBarWhenKeyboardShows:
          true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
      decoration: NavBarDecoration(
        // borderRadius: BorderRadius.circular(10.0),
        colorBehindNavBar: Colors.white,
      ),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: ItemAnimationProperties(
        // Navigation Bar's items animation properties.
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: ScreenTransitionAnimation(
        // Screen transition animation on change of selected tab.
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle:
          NavBarStyle.style6, // Choose the nav bar style with this property.
    );
  }
}
