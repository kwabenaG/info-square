/// "context" is used as a parameter for major widgets defined

// widget for default page for the card news

import "package:flutter/material.dart";
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

import 'drawer_menu_items/menu_items.dart';

//  import local folders

// drawers
Widget initDrawer(context) {
  return Drawer(
      elevation: 0.0,
      child: ListView(padding: EdgeInsets.zero, children: [
        // DrawerHeader(
        //     margin: EdgeInsets.all(0.0),
        //     padding: EdgeInsets.fromLTRB(10, 60, 30, 10),
        //     child: Text('Info Dem',
        //         // textAlign: TextAlign.left,
        //         style: GoogleFonts.lato(
        //           fontSize: 55.0,
        //           fontWeight: FontWeight.w900,
        //           // color: Colors.black87,
        //         ))),
        Padding(padding: EdgeInsets.only(top: 100)),
        ListTile(
            title: Text('Info Dem',
                // textAlign: TextAlign.left,
                style: GoogleFonts.lato(
                    color: Colors.blue[800],
                    fontSize: 55.0,
                    fontWeight: FontWeight.w900))),
        ListTile(
            minVerticalPadding: 20.0,
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => mandateMethod(context)));
            },
            title: Text("About Us",
                style: GoogleFonts.lato(
                  fontSize: 25.0,
                  fontWeight: FontWeight.w700,
                ))),
        ListTile(
            onTap: () {},
            title: Text("Tools",
                style: GoogleFonts.lato(
                  fontSize: 25.0,
                  fontWeight: FontWeight.w700,
                ))),
        ListTile(
            onTap: () {},
            title: Text("Help",
                style: GoogleFonts.lato(
                  fontSize: 25.0,
                  fontWeight: FontWeight.w700,
                ))),
        Padding(padding: EdgeInsets.only(bottom: 100)),
        Divider(height: 1.0, color: Colors.black87),
        Container(
          margin: EdgeInsets.all(10.0),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('v 1.0.0',
                    textAlign: TextAlign.left,
                    style: GoogleFonts.lato(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w700,
                    ))
              ]),
        ),
      ]));
} //end of drawer

// scroll menu top navigation

Widget trendingMenuList() {
  return DefaultTabController(
      length: 10,
      child: TabBar(
          isScrollable: true,
          indicatorColor: Colors.transparent,
          unselectedLabelColor: Colors.white,
          tabs: [
            Tab(
                child: Text('Trending',
                    style: GoogleFonts.lato(
                        fontSize: 16.0,
                        color: Colors.blue[800],
                        decoration: TextDecoration.none))),
            Tab(text: 'a'),
            Tab(text: 'a'),
            Tab(text: 'a'),
            Tab(text: 'a'),
            Tab(text: 'a'),
            Tab(text: 'a'),
            Tab(text: 'a'),
            Tab(text: 'a'),
            Tab(text: 'a')
          ]));
}










// ------------------------------
// //homepage news card
// Widget containerListBuilderCardNews() {
//   return Container(
//       height: 40,
//       width: 200,
//       // color: Colors.amberAccent,
//       // padding: EdgeInsets.all(10.0),
//       child: ListView.builder(
//           shrinkWrap: true,
//           scrollDirection: Axis.horizontal,
//           itemCount: 6,
//           itemBuilder: (BuildContext context, int index) {
//             return Row(children: [
//               TextButton(onPressed: (){}, child: Text('a'))
              
//               ]);
//           }));
// }

// // methods to homepage news card
// Widget cardNewsWidget(context) {
//   return Container(
//       // margin: EdgeInsets.all(3.0),
//       padding: EdgeInsets.all(1.0),
//       height: MediaQuery.of(context).size.height * 0.2,
//       width: MediaQuery.of(context).size.width * 0.6,
//       // color: Colors.orange,
//       child: Card(
//           // elevation: 3.0,
//           color: Colors.white,
//           child: Column(children: [
//             ListTile(
//                 onTap: () {},
//                 // leading: Icon(Icons.new_releases,
//                 //     size: 30.0, color: Colors.blue[600]),
//                 title: Text('a',
//                     // maxLines: 10,
//                     style: GoogleFonts.lato(
//                         fontSize: 15.0, fontWeight: FontWeight.w500)),
//                 subtitle: Text('campus news',
//                     style: GoogleFonts.lato(
//                         fontSize: 15.0, fontWeight: FontWeight.w500))),
//             // listTileActionsDetails()
//           ])));
// }

// // for card news => subtls

// Widget listTileActionsDetails() {
//   return Row(mainAxisAlignment: MainAxisAlignment.end, children: [
//     Icon(
//       Icons.access_time,
//       size: 13.0,
//     ),
//     Padding(padding: EdgeInsets.only(right: 3.0)),
//     Text('6 hrs ago', style: TextStyle(fontSize: 12.0)),
//     TextButton(
//       child: Text('read more ...',
//           style: TextStyle(
//               fontSize: 13.0,
//               fontWeight: FontWeight.w500,
//               color: Colors.blue[600])),
//       onPressed: () => {print('read more')},
//     )
//   ]);
// }
