//  widget only for appbar

import 'package:flutter/material.dart';

// packages imports
import 'package:google_fonts/google_fonts.dart';
// import 'package:info_square/screens/pages/user_page.dart';

// local import

// actions user[person icon] ==> user
Widget settingsButtonAppBar(context) {
  return IconButton(
      icon: Icon(Icons.settings, color: Colors.blue[900]),
      iconSize: 25.0,
      onPressed: () {
        // Navigator.push(
        //     context, MaterialPageRoute(builder: (context) => UserData()));
        showModalBottomSheet(
            //modal bottom sheet section
            // isScrollControlled: true,
            isDismissible: false,
            context: context,
            builder: (BuildContext context) {
              return Container(
                  height: 800.0,
                  child: Column(children: [
                    settingsModalTopItems(context), // top row ends here
                    findMoreInfo(),
                    // sheetModalContentOne(context),
                    // sheetModalContentTwo(),
                    // add content to the bottom modal sheet here
                  ]));
            });
      });
}

// functional widgets starts here
// ---------------- discover elements

Widget settingsModalTopItems(context) =>
    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Container(
          // decoration: BoxDecoration(),
          padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0.0),
          // height: 600.0,
          child: Text("Settings", style: GoogleFonts.lato(fontSize: 20.0))),
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
      Text("Put on priority",
          style: TextStyle(fontSize: 15.0, color: Colors.blue[400]))
    ]));

// --------------- show  sheet modal content
Widget sheetModalContentOne(context) => Container(
    padding: EdgeInsets.all(5.0),
    child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
      Card(
          elevation: 10.0,
          child: Container(
              height: 50,
              width: 160,
              child: ListTile(
                  onTap: () {
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) => CampusInfoDiscoverPage()));
                  },
                  // leading: Icon(Icons.book),
                  title: Text('Campus Info')))),
      Card(
          elevation: 10.0,
          child: Container(
              height: 50,
              width: 160,
              child: ListTile(
                  onTap: () {},
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
                  onTap: () {},
                  // leading: Icon(Icons.book),
                  title: Text('Activities')))),
      Card(
          elevation: 10.0,
          child: Container(
              height: 50,
              width: 160,
              child: ListTile(
                  onTap: () {},
                  // leading: Icon(Icons.book),
                  title: Text('Events')))),
    ]));
