// handles the trending news

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class TrendingNews extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.blue[800]),
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back)),
          backgroundColor: Colors.black12,
          bottomOpacity: 0.5,
          elevation: 0.0,
          title: Text("Trending News",
              style: GoogleFonts.lato(color: Colors.blue[800], fontSize: 18.0)),
        ),
        body: SafeArea(child: Center(child: Text("TRENDING NEWS"))),
        floatingActionButton: FloatingActionButton(
            onPressed: () {},
            child: Icon(FontAwesomeIcons.comment, color: Colors.white),
            backgroundColor: Colors.blue[400]));
  }
}
