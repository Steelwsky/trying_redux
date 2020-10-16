import 'package:flutter/cupertino.dart';
import 'package:trying_redux/models/app_tab.dart';
import 'package:trying_redux/models/comment.dart';
import 'package:trying_redux/models/post.dart';

@immutable
class AppState {
  AppState({
    this.posts = const [],
    this.chosenPost,
    this.comments = const [],
    this.activeTab = AppTab.first,
  });

  final List<Post> posts;
  final Post chosenPost;
  final List<Comment> comments;
  final AppTab activeTab;
}
