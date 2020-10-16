import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:trying_redux/consts.dart';
import 'package:trying_redux/models/comment.dart';
import 'package:trying_redux/models/post.dart';

class ClientApi {
  Dio dio = Dio();

  Future<List<Post>> fetchAndSerializePosts() async {
    print('loadAndFetchPosts init');
    // final List<Post> posts = [];
    final Response<String> response = await dio.get(Urls.POSTS_URL);
    final responseBody = response.data;
    print('hey, $responseBody');
    final List list = json.decode(responseBody);

    return list.map((post) => Post.fromJson(post)).toList();
    // print('loadAndFetchPosts: $posts');
    // return posts;
  }

  Future<List<Comment>> fetchAndSerializeComments() async {
    Response response;
    final List<Comment> comments = [];
    response = await dio.get(Urls.COMMENTS_URL);
    Map<String, dynamic> data = jsonDecode(response.data);
    for (var item in data.values) {
      comments.add(Comment.fromJson(item));
    }
    return comments;
  }
}
