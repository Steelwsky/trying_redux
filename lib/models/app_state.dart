import 'package:trying_redux/actions/actions.dart';
import 'package:trying_redux/models/app_tab.dart';
import 'package:trying_redux/models/comment.dart';
import 'package:trying_redux/models/post.dart';

class AppState {
  AppState({
    this.posts = const [],
    this.comments = const [],
    this.activeTab = AppTab.first,
  });

  final List<Post> posts;
  final List<Comment> comments;
  final AppTab activeTab;
}
