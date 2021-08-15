// default page discover widget

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// local imports
// import 'package:info_square/widgets/homepage/discover/discoverPage.dart';

Widget discover(context) {
  return Container(
    height: 90.0,
    // padding: EdgeInsets.only(top: 10.0),
    // margin: EdgeInsets.all(0.0),
    child:
        ListView(scrollDirection: Axis.horizontal, shrinkWrap: true, children: [
      TextButton(
          onPressed: () {
            showModalBottomSheet(
                //modal bottom sheet section
                // isScrollControlled: true,
                isDismissible: false,
                context: context,
                builder: (BuildContext context) {
                  return Container(
                      height: 800.0,
                      child: Column(children: [
                        discoverModalTopItems(context), // top row ends here
                        findMoreInfo(),
                        sheetModalContentOne(),
                        sheetModalContentTwo(),
                        // add content to the bottom modal sheet  here
                      ]));
                });
            // Navigator.push(context,
            //     MaterialPageRoute(builder: (context) => DiscoverPage()));
          },
          child: Text("DISCOVER.",
              style: GoogleFonts.carterOne(
                  fontSize: 60.0, letterSpacing: 8.0, color: Colors.blue[800])
              // TextStyle(
              //     letterSpacing: 7.0,
              //     color: Colors.blue[800],
              //     fontSize: 65.0,
              //     fontWeight: FontWeight.w800)
              ))
    ]),
  );
}

// functional widgets starts here
// ---------------- discover elements

Widget discoverModalTopItems(context) =>
    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Container(
          // decoration: BoxDecoration(),
          padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0.0),
          // height: 600.0,
          child: Text("Pick Your Discovery Info",
              style: GoogleFonts.lato(fontSize: 20.0))),
      Container(
          padding: EdgeInsets.fromLTRB(0.0, 10.0, 10.0, 0.0),
          // height: 600.0,
          child: IconButton(
              padding: EdgeInsets.all(1.0),
              splashRadius: 15.0,
              onPressed: () {
                // close to the homepage
                Navigator.pop(context, true);
              },
              icon: Icon(Icons.close, color: Colors.blue[800]))),
    ]);
// -------------------------- find more info about
Widget findMoreInfo() => Container(
    padding: EdgeInsets.fromLTRB(10.0, 15.0, 0.0, 0.0),
    child: Row(children: [
      Text("FIND MORE CAMPUS NEWS ABOUT...",
          style: TextStyle(fontSize: 12.0, color: Colors.blue[400]))
    ]));

// --------------- show  sheet modal content
Widget sheetModalContentOne() => Container(
    padding: EdgeInsets.all(5.0),
    child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
      Card(
          elevation: 10.0,
          child: Container(
              height: 50,
              width: 160,
              child: ListTile(
                  // leading: Icon(Icons.book),
                  title: Text('Campus Info')))),
      Card(
          elevation: 10.0,
          child: Container(
              height: 50,
              width: 160,
              child: ListTile(
                  // leading: Icon(Icons.book),
                  title: Text('Campus Groups')))),
    ]));

// -------------- show Modal content 2

Widget sheetModalContentTwo() => Container(
    padding: EdgeInsets.all(5.0),
    child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
      Card(
          elevation: 10.0,
          child: Container(
              height: 50,
              width: 160,
              child: ListTile(
                  // leading: Icon(Icons.book),
                  title: Text('Activities')))),
      Card(
          elevation: 10.0,
          child: Container(
              height: 50,
              width: 160,
              child: ListTile(
                  // leading: Icon(Icons.book),
                  title: Text('Events')))),
    ]));
