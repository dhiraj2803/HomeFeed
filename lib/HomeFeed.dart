import 'package:flutter/material.dart';
import 'package:home_feed/constant.dart';
import 'package:home_feed/feeds.dart';

class HomeFeed extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 1,
      child: Scaffold(
        backgroundColor: appBackbround,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(60.0),
          child: Material(
            elevation: 5.0,
            color: appBackbround,
            child: Column(
              children: [
                ListTile(
                  title: Text(
                    "GOOD MORNING",
                    textAlign: TextAlign.start,
                    style: headline1,
                  ),
                ),
              ],
            ),
          ),
        ),
        body: TabBarView(
          children: [
            //PopularTabView(),
            FeedsView(),
            //RecentTabView(),
          ],
        ),
      ),
    );
  }
}
