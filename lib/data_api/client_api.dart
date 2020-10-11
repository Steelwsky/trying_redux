import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:trying_redux/consts.dart';
import 'package:trying_redux/models/comment.dart';
import 'package:trying_redux/models/post.dart';

class ClientApi {
  Dio dio = Dio();

  Future<List<Post>> loadAndFetchPosts() async {
    Response response;
    final List<Post> posts = [];
    response = await dio.get(Urls.POSTS_URL);
    Map<String, dynamic> data = jsonDecode(response.data);
    for (var item in data.values) {
      posts.add(Post.fromJson(item));
    }
    return posts;
  }

  Future<List<Comment>> loadAndFetchComments() async {
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

// Future<void> loadAndFetchPosts() async {
//     Response response;
//     response = await dio.get(Urls.POSTS_URL);
//     fetchData(response);
//   }
//
//   List<Post> fetchData (Response response) {
//     final List<Post> posts = [];
//     Map<String, dynamic> data = jsonDecode(response.data);
//     for (var item in data.values) {
//       posts.add(Post.fromJson(item));
//     }
//     return posts;
//   }