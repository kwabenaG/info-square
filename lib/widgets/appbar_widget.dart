//  widget only for appbar

import 'package:flutter/material.dart';
import 'package:info_square/screens/pages/user_page.dart';

// local import

// actions user[person icon]
Widget personButtonAppBar(context) {
  return IconButton(
      icon: Icon(Icons.person, color: Colors.blue[800]),
      iconSize: 30.0,
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => UserData()));
      });
}
