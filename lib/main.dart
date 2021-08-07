import "dart:core";
import "package:flutter/material.dart";

// import local classes
import 'package:info_square/screens/home_screen.dart';

void main() {
  runApp(InfoSquare());
}

class InfoSquare extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(fontFamily: 'Raleway'),
        debugShowCheckedModeBanner: false,
        title: "Info Dem",
        home: HomeScreen());
  }
}
