// discover campus info page
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CampusInfoDiscoverPage extends StatefulWidget {
  const CampusInfoDiscoverPage({Key? key}) : super(key: key);

  @override
  _CampusInfoDiscoverPageState createState() => _CampusInfoDiscoverPageState();
}

class _CampusInfoDiscoverPageState extends State<CampusInfoDiscoverPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            iconTheme: IconThemeData(color: Colors.blue[800], size: 0.0),
            title: Text("Discover ~ Campus Info",
                style:
                    GoogleFonts.lato(color: Colors.blue[800], fontSize: 18.0)),
            backgroundColor: Colors.black12,
            elevation: 0.0),
        body: Container(child: Column(children: [])));
  }
}
