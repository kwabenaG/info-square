// handles app bar

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
        //custome app bar
        preferredSize: Size(MediaQuery.of(context).size.width, 50.0),
        child: Container(
            color: Colors.black12,
            child: SafeArea(
                top: true,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 10.0),
                        child: GestureDetector(
                            onTap: () {}, child: Icon(FontAwesomeIcons.bars)),
                      ),
                      SizedBox(height: 20.0),
                      Container(
                          margin: EdgeInsets.all(6.0),
                          decoration: BoxDecoration(
                            color: Colors.grey[400],
                            shape: BoxShape.circle,
                          ),
                          child: Text('a'))
                    ]))));
  }
}
