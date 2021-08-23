// old dart plain  ==> this page handles the latest news

// ------- fields needed for the news class
// title, image, description, tags, uploadDate

class NewsItem {
  int? likes = 0;
  final String? title, image, description;
  List<String>? tags;
  DateTime? uploadDate;

  // constructor
  NewsItem(
      {required this.title,
      required this.description,
      this.image,
      this.tags,
      this.likes,
      this.uploadDate});

  // factory NewsItem.fromJson(Map<String, dynamic> jsonData) {
  //     return
  // }
}
