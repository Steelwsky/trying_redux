class Post {
  Post({this.id, this.userId, this.title, this.body});

  final int id;
  final int userId;
  final String title;
  final String body;

  Post.fromJson(Map<String, dynamic> json)
      : id = json['id'] as int,
        userId = json['userId'] as int,
        title = json['title'] as String,
        body = json['body'] as String;
}
