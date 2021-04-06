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
        items: _navBarList,
      ),
    );
  }
}

List<BottomNavigationBarItem> _navBarList = [
  BottomNavigationBarItem(
    icon: SvgPicture.asset(
      'assets/search.svg',
      width: 30,
      color: Color(0xFFFFBC53),
    ),
    activeIcon: SvgPicture.asset(
      'assets/search_2.svg',
      width: 30,
      color: Color(0xFFFFBC53),
    ),
    label: "Search",
  ),
  BottomNavigationBarItem(
    icon: SvgPicture.asset(
      'assets/home.svg',
      width: 30,
      color: Color(0xFFFFBC53),
    ),
    activeIcon: SvgPicture.asset(
      'assets/home_2.svg',
      width: 30,
      color: Color(0xFFFFBC53),
    ),
    label: "Home",
  ),
  BottomNavigationBarItem(
    icon: SvgPicture.asset(
      'assets/account.svg',
      width: 30,
      color: Color(0xFFFFBC53),
    ),
    activeIcon: SvgPicture.asset(
      'assets/account_2.svg',
      width: 30,
      color: Color(0xFFFFBC53),
    ),
    label: "Account",
  ),
];
