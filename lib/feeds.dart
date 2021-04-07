import 'package:flutter/material.dart';
import 'package:home_feed/news.dart';
//import 'package:news_app/views/read_news_view.dart';
import 'package:home_feed/news_card.dart';
import 'package:home_feed/constant.dart';
import 'package:home_feed/readFeeds.dart';

class feedsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(

      itemCount: trendingList.length,
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      physics: BouncingScrollPhysics(),
      itemBuilder: (context, index) {
        var trending = trendingList[index];

        return InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(

                builder: (context) => ReadFeeds(news: trending),
              ),
            );
          },
          child: Container(
            width: double.infinity,
            height: 300.0,
            color: appBackbround,
            margin: EdgeInsets.symmetric(horizontal: 18.0, vertical: 18.0),
            child: PrimaryCard(news: trending),
          ),
        );
      },
    );
  }
}
