import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:home_feed/ProfileView.dart';
import 'package:home_feed/NotificationView.dart';
import 'package:home_feed/HomeFeed.dart';
import 'package:home_feed/constant.dart';

class BottomNav extends StatefulWidget {
  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _selectedIndex = 1;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  static List<Widget> _bottomNavView = [
    NotificationView(),
    HomeFeed(),
    ProfileView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appBackbround,
      body: SafeArea(
        child: _bottomNavView.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: bottomBar,
        currentIndex: _selectedIndex,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        onTap: _onItemTapped,
        items: _navBarList
            .map(
              (e) => BottomNavigationBarItem(
            icon: SvgPicture.asset(
              e.icon,
              width: 30.0,

            ),
            activeIcon: SvgPicture.asset(
              e.activeIcon,
              width: 30.0,
            ),
            title: Text(e.title),
          ),
        )
            .toList(),
      ),
    );
  }
}

class NavBarItem {
  final String icon;
  final String activeIcon;
  final String title;
  NavBarItem({this.icon, this.activeIcon, this.title});
}

List<NavBarItem> _navBarList = [
  NavBarItem(
    icon: "assets/search.svg",
    activeIcon: "assets/search_2.svg",
    title: "Search",
  ),
  NavBarItem(
    icon: "assets/home.svg",
    activeIcon: "home_2.svg",
    title: "Home",
  ),
  NavBarItem(
    icon: "assets/account.svg",
    activeIcon: "assets/account_2.svg",
    title: "Account",
  ),
];
