import 'package:flutter/material.dart';
import 'package:jbr_infrastructure/app/utils/screens/profile/profile.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:iconly/iconly.dart';

import '../../../helpers/app_constants.dart';
import '../home/home.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  late PersistentTabController persistentTabController;

  @override
  void initState() {
    persistentTabController = PersistentTabController(initialIndex: 0);
    super.initState();
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: const Icon(
          IconlyLight.category,
          size: 20,
        ),
        title: "Discover",
        activeColorPrimary: AppConstants.blue,
        inactiveColorPrimary: AppConstants.grey,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(
          IconlyLight.heart,
          size: 20,
        ),
        title: 'Favorites',
        activeColorPrimary: AppConstants.blue,
        inactiveColorPrimary: AppConstants.grey,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(
          IconlyLight.chat,
          size: 20,
        ),
        title: 'Inbox',
        activeColorPrimary: AppConstants.blue,
        inactiveColorPrimary: AppConstants.grey,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(
          IconlyLight.profile,
          size: 20,
        ),
        title: 'Profile',
        activeColorPrimary: AppConstants.blue,
        inactiveColorPrimary: AppConstants.grey,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      screens: const [Home(), Scaffold(), Scaffold(), Profile()],
      items: _navBarsItems(),
      controller: persistentTabController,
      confineInSafeArea: true,
      backgroundColor: AppConstants.white,
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: const ItemAnimationProperties(
          duration: Duration(milliseconds: 200), curve: Curves.ease),
      screenTransitionAnimation: const ScreenTransitionAnimation(
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      decoration: NavBarDecoration(
          colorBehindNavBar: AppConstants.white,
          borderRadius: const BorderRadius.all(Radius.zero)),
      navBarStyle: NavBarStyle.style6,
    );
  }
}
