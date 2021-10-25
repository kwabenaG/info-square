import "dart:core";
import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// packages

// local imports
import 'package:info_square/screens/pages/page_default.dart';
import 'package:info_square/screens/pages/page_event.dart';
// import 'package:info_square/screens/pages/page_search.dart';
import 'package:info_square/widgets/appbar_widget.dart';
// import 'package:info_square/widgets/custom_app_bar.dart';
// import 'package:info_square/widgets/appbar_widget.dart';
// import 'package:info_square/widgets/custom_app_bar.dart';
import 'package:info_square/widgets/homepage/homepage_widgets.dart';
import 'auth/register.dart';

class HomeScreen extends StatefulWidget {
  //HomeScreen({  }) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  //for selected item
  int _selectedIndexContent = 0;

  //responsible for drawer selection
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

  // main pages
  final List<Widget> content = [
    DefaultScreen(),
    Event(),
    RegisterPage(),
    // SearchPage()
  ];

  //function to index the bottom menu
  void _tappedMenu(int index) {
    setState(() => {_selectedIndexContent = index});
  }

  void _openDrawer() {
    _scaffoldKey.currentState!.openDrawer();
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
            leading: IconButton(
                splashRadius: 10,
                onPressed: () {
                  _openDrawer();
                },
                icon: Icon(FontAwesomeIcons.bars)),
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
                  child: settingsButtonAppBar(context))
            ]),
        // : PreferredSize(
        //     child: Text('a'),
        //     preferredSize: Size(MediaQuery.of(context).size.width, 50.0)),
        body: Container(
            color: Colors.black12,
            child: content[_selectedIndexContent]), //body starts here
        bottomNavigationBar: BottomNavigationBar(
          elevation: 0.0,
          items: [
            BottomNavigationBarItem(
              backgroundColor: Colors.black12,
              icon: Icon(FontAwesomeIcons.home, size: 18),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.calendarWeek, size: 18),
              label: "Events",
            ),
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.userAlt, size: 18),
              label: "User",
            ),
          ],
          currentIndex: _selectedIndexContent,
          selectedItemColor: Colors.blue[800],
          unselectedItemColor: Colors.black,
          showUnselectedLabels: true,
          onTap: _tappedMenu,
          selectedIconTheme: IconThemeData(opacity: 1.0),
          unselectedIconTheme: IconThemeData(opacity: 0.6),
          // backgroundColor: Colors.blue[800],
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: () {},
            child: Icon(FontAwesomeIcons.comment, color: Colors.white),
            backgroundColor: Colors.blue[400]));
  }
}
