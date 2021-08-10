// default page discover widget

import 'package:flutter/material.dart';

// local imports
import 'package:info_square/widgets/homepage/discover/discoverPage.dart';

Widget discover(context) {
  return Container(
    height: 80.0,
    margin: EdgeInsets.all(0.0),
    child:
        ListView(scrollDirection: Axis.horizontal, shrinkWrap: true, children: [
      TextButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => DiscoverPage()));
          },
          child: Text("DISCOVER.",
              style: TextStyle(
                  letterSpacing: 7.0,
                  color: Colors.blue[800],
                  fontSize: 60.0,
                  fontWeight: FontWeight.w800)))
    ]),
  );
}
