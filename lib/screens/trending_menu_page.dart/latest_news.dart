// handles the trending news

import 'package:flutter/material.dart';

// packages imports
import 'package:google_fonts/google_fonts.dart';

class LatestNews extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Latest News",
              style: GoogleFonts.lato(color: Colors.blue[800], fontSize: 18.0)),
          iconTheme: IconThemeData(color: Colors.blue[800]),
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back)),
          backgroundColor: Colors.black12,
          bottomOpacity: 0.5,
          elevation: 0.0,
          actions: [],
        ),
        body: Center(child: Text("Latest NEWS")));
  }
}
