import 'package:flutter/cupertino.dart';
import 'package:trying_redux/models/app_tab.dart';
import 'package:trying_redux/models/comment.dart';
import 'package:trying_redux/models/photo.dart';
import 'package:trying_redux/models/post.dart';

class UpdateTabAction {
  final AppTab newTab;

  UpdateTabAction(this.newTab);
}

class PostsLoadAction {}

class PostsLoadedAction {
  PostsLoadedAction({this.posts});

  final List<Post> posts;
}

class PostsNotLoadedAction {}

class CommentsLoadAction {}

class CommentsLoadedAction {
  CommentsLoadedAction({this.comments});

  final List<Comment> comments;
}

class CommentsNotLoadedAction {}

class PhotosLoadAction {}

class PhotosLoadedAction {
  PhotosLoadedAction({this.photos});

  final List<Photo> photos;
}

class NavigateToPostDetailsAction {
  NavigateToPostDetailsAction({this.post});

  final Post post;
}

class PostSelectedAction {
  PostSelectedAction({this.post});

  final Post post;
}

// class NavigateToCommentDetailsAction {}
