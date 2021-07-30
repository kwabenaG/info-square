import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class IconButtonCircle extends StatefulWidget {
  final double iconSize;
  final Function onPressed;
  final IconData icon;

  IconButtonCircle(
      {Key? key,
      required this.icon,
      required this.iconSize,
      required this.onPressed})
      : super(key: key);

  @override
  _IconButtonCircleState createState() => _IconButtonCircleState();
}

class _IconButtonCircleState extends State<IconButtonCircle> {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(6.0),
        decoration: BoxDecoration(
          color: Colors.grey[400],
          shape: BoxShape.circle,
        ),
        child: IconButton(
            icon: Icon(Icons.search, color: Colors.blue[800]),
            iconSize: 25.0,
            onPressed: () {}));
  }
}
