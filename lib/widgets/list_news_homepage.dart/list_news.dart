/// this method handles the list news on the homepage right after the card bulletins

import 'package:flutter/material.dart';

Widget listViewInfoDemNews() {
  return Expanded(
    flex: 1,
    // padding: EdgeInsets.all(20.0),
    // height: 200,
    child: Container(
        padding: EdgeInsets.all(1.0),
        alignment: Alignment.center,
        child: ListView.builder(
            physics: BouncingScrollPhysics(),
            itemCount: 101,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                  // padding: EdgeInsets.all(2.0),
                  child: Card(
                      margin: EdgeInsets.all(5.0),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            ListTile(
                                minVerticalPadding: 10.0,
                                onTap: () {},
                                selectedTileColor: Colors.teal[400],
                                title: Text(
                                    "News Around the campus News Around the campus News Around the campus  News Around the campus News Around the campus News Around the campus",
                                    style: TextStyle(fontSize: 15.0),
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 3),
                                trailing:
                                    Icon(Icons.book, color: Colors.blue[800]))
                          ])));
            })),
  );
}
