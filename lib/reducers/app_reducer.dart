import 'package:trying_redux/models/app_state.dart';
import 'package:trying_redux/reducers/comments_reducer.dart';
import 'package:trying_redux/reducers/post_reducer.dart';
import 'package:trying_redux/reducers/posts_reducer.dart';
import 'package:trying_redux/reducers/tabs_reducer.dart';

AppState appReducer(AppState state, action) {
  return AppState(
    posts: postsReducer(state.posts, action),
    chosenPost: postReducer(state.chosenPost, action),
    comments: commentsReducer(state.comments, action),
    activeTab: tabsReducer(state.activeTab, action),
  );
}
