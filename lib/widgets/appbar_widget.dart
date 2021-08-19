//  widget only for appbar

import 'package:flutter/material.dart';
import 'package:info_square/screens/pages/user_page.dart';

// local import

// actions user[person icon] ==> user
Widget personButtonAppBar(context) {
  return IconButton(
      icon: Icon(Icons.settings, color: Colors.blue[900]),
      iconSize: 30.0,
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => UserData()));
      });
}
