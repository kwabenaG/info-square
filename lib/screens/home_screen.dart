import "dart:core";
import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";

// local imports
import 'package:info_square/screens/pages/default_page.dart';
import 'package:info_square/screens/pages/search_page.dart';
import 'package:info_square/widgets/appbar_widget.dart';
import 'package:info_square/widgets/homepage/card_widget_news.dart';

class HomeScreen extends StatefulWidget {
  //HomeScreen({  }) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  //for selected item
  int _selectedIndexContent = 0;

  //responsible for drawer selection
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  // content classes
  final List<Widget> content = [
    DefaultScreen(),
    Text("two"),
    Text("three"),
    SearchPage()
  ];

  void _tapped(int index) {
    setState(() => {_selectedIndexContent = index});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: initDrawer(context),
      drawerScrimColor: Colors.black54,
      drawerEnableOpenDragGesture: false,
      drawerEdgeDragWidth: 5.0,
      appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.blue[800]),
          elevation: 0,
          backgroundColor: Colors.black12,
          centerTitle: false,
          actions: [
            Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  color: Colors.grey[400],
                  shape: BoxShape.circle,
                ),
                child: personButtonAppBar(context))
          ]), // end of appbar
      body: Container(
          // color: Colors.blue,
          // height: 900.0,
          color: Colors.black12,
          child: content[_selectedIndexContent]), //body starts here
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0.0,
        items: [
          BottomNavigationBarItem(
            backgroundColor: Colors.black12,
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_view_day_outlined),
            label: "Events",
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.speaker),
            label: "Alerts",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Search",
          ),
        ],
        currentIndex: _selectedIndexContent,
        selectedItemColor: Colors.blue[800],
        unselectedItemColor: Colors.black,
        showUnselectedLabels: true,
        onTap: _tapped,
        // backgroundColor: Colors.blue[800],
      ),
    );
  }
}

// Widget drawerM(){
//   return
// }
