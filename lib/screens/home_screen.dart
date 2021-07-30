import "dart:core";
import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";

class HomeScreen extends StatefulWidget {
  //HomeScreen({  }) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  //for selected item
  int _selectedIndex = 0;

  void _tapped(int index) {
    setState(() => {_selectedIndex = index});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Info Square",
              style: TextStyle(
                  fontFamily: "skia",
                  fontWeight: FontWeight.w600,
                  color: Colors.blue[800])),
          elevation: 0,
          backgroundColor: Colors.white,
          centerTitle: false,
          actions: [
            Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  color: Colors.grey[400],
                  shape: BoxShape.circle,
                ),
                child: IconButton(
                    icon: Icon(Icons.search, color: Colors.blue[800]),
                    iconSize: 25.0,
                    onPressed: () {}))
          ]),
      body: Center(),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
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
            icon: Icon(Icons.person),
            label: "User",
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue[800],
        unselectedItemColor: Colors.black,
        showUnselectedLabels: true,
        onTap: _tapped,
      ),
    );
  }
}
