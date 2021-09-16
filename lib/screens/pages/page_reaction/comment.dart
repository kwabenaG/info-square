// handles the comments section
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class UserComment extends StatefulWidget {
  const UserComment({Key? key}) : super(key: key);

  @override
  UserCommentState createState() => UserCommentState();
}

class UserCommentState extends State<UserComment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Comments', style: GoogleFonts.lato(fontSize: 20)),
          leading: IconButton(
              icon: Icon(FontAwesomeIcons.arrowLeft, size: 20),
              onPressed: () {
                Navigator.pop(context);
              }),
          actions: [
            Container(
                padding: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    // borderRadius: BorderRadius.circular(20.0),
                    color: Colors.amber),
                child: Icon(FontAwesomeIcons.userAlt, size: 20))
          ],
        ),
        body: SafeArea(
            child: Container(
                child: Column(children: [
          Padding(padding: const EdgeInsets.only(bottom: 10))
        ]))));
  }
}
