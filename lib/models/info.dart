// old dart plain  ==> this page handles the latest news from the clubs leader and the admins

// ------- fields needed for the news class
// title, image, description, tags, uploadDate

import "dart:core";
// import "dart:convert";
import 'package:info_square/models/club.dart';
// import 'package:meta/meta.dart';

class Info {
  final int countLikes = 0;
  final bool isLiked = false;
  final String title, image, description, comment;
  final List<String> tags;
  final DateTime uploadDate;

  final List<Club> clubOwner;

  // constructor for info
  const Info(
      {this.title = "",
      this.description = "",
      this.comment = "",
      this.image = "",
      this.tags = const [],
      required this.uploadDate,
      this.clubOwner = const []});
}
