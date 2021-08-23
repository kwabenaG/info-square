// handles all search throughout the

import 'package:flutter/material.dart';

final TextEditingController _searchControlller = TextEditingController();
Widget searchBar() {
  return Container(
      padding: EdgeInsets.all(5.0),
      child: TextField(
        cursorColor: Colors.blue[800],
        // focusNode:
        // inputFormatters: [],
        controller: _searchControlller,
        decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            prefixIcon: Icon(Icons.search, color: Colors.blue[800]),
            hintText: "Search for groups or clubs",
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(30.0))),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(30.0)),
                borderSide: BorderSide(color: Color.fromRGBO(19, 73, 156, 1)))),
        // maxLength: 100,
      ));
}
