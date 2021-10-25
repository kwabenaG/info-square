// handles the default screen
import 'package:flutter/material.dart';

// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// import local widgets from widget folder
import 'package:info_square/widgets/homepage/searchBar.dart';
import 'page_trending_menu/page_top_menu.dart';

// packages imports from pub.dev
import 'package:google_fonts/google_fonts.dart';
import 'package:info_square/widgets/snapshot_news_homepage.dart';

class DefaultScreen extends StatefulWidget {
  DefaultScreen({Key? key}) : super(key: key);

  @override
  _DefaultScreenState createState() => _DefaultScreenState();
}

class _DefaultScreenState extends State<DefaultScreen> {
  int _selectedTrendingMenuIndex = 0;

  final List<Widget> _menuText = [
    // "make", "some thing else"
    Text('Trending', style: GoogleFonts.lato(fontSize: 17.0)),
    Text('Latest', style: GoogleFonts.lato(fontSize: 17.0)),
    Text('Filla', style: GoogleFonts.lato(fontSize: 17.0)),
    Text('Hall  News', style: GoogleFonts.lato(fontSize: 17.0)),
    // Text('Music', style: GoogleFonts.lato(fontSize: 17.0)),
    Text('Entertainment', style: GoogleFonts.lato(fontSize: 17.0))
  ];

  Widget _buildTrendingMenu(int index) {
    // widget private function of the trending menu
    return GestureDetector(
        onTap: () {
          setState(() {
            _selectedTrendingMenuIndex = index;
          });
          // print(_selectedTrendingMenuIndex);
          if (_selectedTrendingMenuIndex == 0) {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => TrendingNews()));
          } else if (_selectedTrendingMenuIndex == 1) {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => LatestNews()));
          }
        },
        child: Container(
          padding: EdgeInsets.all(10.0),
          child: _menuText[index],
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(children: [
      Container(margin: EdgeInsets.all(2.0), child: searchBar(context)),
      // trendingMenuCarousel(context),
      // SizedBox(height: 5.0),
      Container(
        // top news label item
        height: 50,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: _menuText
              .asMap()
              .entries
              .map((MapEntry e) => _buildTrendingMenu(e.key))
              .toList(),
        ),
      ),

      ListViewInfoDemNews(),
    ]));
  }
}
