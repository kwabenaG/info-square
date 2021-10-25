/// this method handles the list news on the homepage right after the card bulletins

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:info_square/models/models.dart';
import 'package:info_square/screens/pages/page_reaction/comment.dart';

// mock data
import '../data/data.dart';

// models will be imported here

class ListViewInfoDemNews extends StatefulWidget {
  const ListViewInfoDemNews({Key? key}) : super(key: key);

  @override
  _ListViewInfoDemNewsState createState() => _ListViewInfoDemNewsState();
}

class _ListViewInfoDemNewsState extends State<ListViewInfoDemNews> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      // padding: EdgeInsets.all(20.0),
      // height: 200,
      child: Container(
          // padding: EdgeInsets.all(1.0),
          alignment: Alignment.center,
          child: Scrollbar(
              child: ListView.builder(
                  // for larger chuck of data
                  physics: BouncingScrollPhysics(),
                  itemCount: readyNews.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                        margin: EdgeInsets.only(
                            bottom: 20.0, left: 20.0, right: 20.0),
                        height: 300,
                        padding: EdgeInsets.all(10.00),
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            color: Colors.white60,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20.0),
                              topRight: Radius.circular(20.0),
                              bottomLeft: Radius.circular(20.0),
                              bottomRight: Radius.circular(20.0),
                            )),
                        // padding: EdgeInsets.all(2.0),
                        child: Column(children: [
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      child: CircleAvatar(
                                        backgroundColor: Colors.grey,
                                        backgroundImage: NetworkImage(
                                          'https://source.unsplash.com/user/random/200x200',
                                          // 'https://images.unsplash.com/profile-1446404465118-3a53b909cc82?ixlib=rb-0.3.5&q=80&fm=jpg&crop=faces&cs=tinysrgb&fit=crop&h=32&w=32&s=a2f8c40e39b8dfee1534eb32acfa6bc7',
                                        ),
                                      ),
                                    ),
                                    Padding(
                                        padding: EdgeInsets.fromLTRB(
                                            2.0, 19.0, 1.0, 3.0)),
                                    Column(
                                      // mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            // ClubName(),
                                            Text(readyNews[index]
                                                .clubOwner[0]
                                                .clubAdmin[0]
                                                .adminFirstName),
                                            Icon(Icons.verified_sharp,
                                                size: 15),
                                          ],
                                        ),
                                        Text(
                                            '${readyNews[index].uploadDate}ago',
                                            style:
                                                GoogleFonts.lato(fontSize: 12))
                                      ],
                                    ),
                                  ],
                                ),
                                Row(
                                    // mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      TextButton(
                                        onPressed: () {},
                                        child: Container(
                                          padding: EdgeInsets.fromLTRB(
                                              13.0, 5.0, 12.0, 8.0),
                                          decoration: BoxDecoration(
                                              color: Colors.black12,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(25))),
                                          child: Text('Follow',
                                              style: GoogleFonts.lato(
                                                  fontWeight: FontWeight.w600,
                                                  letterSpacing: 1.5,
                                                  decorationStyle:
                                                      TextDecorationStyle.solid,
                                                  fontSize: 12,
                                                  color: Colors.blue[800])),
                                        ),
                                      )
                                    ])
                              ]),
                          Row(children: [
                            Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 5, vertical: 20)),
                            Flexible(
                                child: Text(readyNews[index].title,
                                    style: GoogleFonts.lato(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 15)))
                          ]),
                          // Image(image:),
                          // title , images goes here
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      print('likes');
                                    },
                                    child: Icon(FontAwesomeIcons.thumbsUp,
                                        size: 15, color: Colors.black45),
                                  ),
                                  Padding(padding: EdgeInsets.only(left: 20)),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  UserComment()));
                                    },
                                    child: Icon(FontAwesomeIcons.comment,
                                        size: 15, color: Colors.black45),
                                  ),
                                ],
                              ),
                              Padding(padding: EdgeInsets.all(30.0)),
                              Row(children: [
                                GestureDetector(
                                  onTap: () {
                                    print('menu');
                                  },
                                  child: Icon(FontAwesomeIcons.ellipsisH,
                                      size: 15, color: Colors.black45),
                                )
                              ]),
                            ],
                          ),
                        ]));
                  }))),
    );
  }
}
