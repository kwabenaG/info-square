// handles all search throughout the

import 'package:flutter/material.dart';

final TextEditingController _searchControlller = TextEditingController();

Widget searchBar(context) {
  return Container(
      padding: EdgeInsets.all(5.0),
      width: MediaQuery.of(context).size.width * 0.9,
      child: TextField(
        cursorColor: Colors.blue[800],
        // focusNode:
        // inputFormatters: [],
        controller: _searchControlller,
        decoration: InputDecoration(
            contentPadding:
                EdgeInsets.symmetric(vertical: 0.0, horizontal: 20.0),
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
