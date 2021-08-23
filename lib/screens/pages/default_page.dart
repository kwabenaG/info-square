import 'package:flutter/material.dart';

// import local widgets from widget folder
import 'package:info_square/widgets/homepage/card_widget_news.dart';
import 'package:info_square/widgets/homepage/searchBar.dart';
// import 'package:info_square/widgets/homepage/discover/discover.dart';
import 'package:info_square/widgets/list_news_homepage.dart/list_news.dart';

class DefaultScreen extends StatefulWidget {
  DefaultScreen({Key? key}) : super(key: key);

  @override
  _DefaultScreenState createState() => _DefaultScreenState();
}

class _DefaultScreenState extends State<DefaultScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(children: [
      // discover(context),
      Container(margin: EdgeInsets.all(2.0), child: searchBar()),
      trendingMenuList(),
      listViewInfoDemNews(),
      // Container(child: Text('a')),
      // Text('add adv here ')
      //add next column here
    ]));
  }
}
