class Photo {
  Photo({this.id, this.title, this.url, this.thumbnailUrl});

  final int id;
  final String title;
  final String url;
  final String thumbnailUrl;

  Photo.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        title = json['title'],
        url = json['url'],
        thumbnailUrl = json['thumbnailUrl'];
}
