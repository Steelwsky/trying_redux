class Comment {
  Comment({this.id, this.postId, this.email, this.title, this.body});

  final int id;
  final int postId;
  final String email;
  final String title;
  final String body;

  Comment.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        postId = json['postId'],
        email = json['email'],
        title = json['title'],
        body = json['body'];
}
