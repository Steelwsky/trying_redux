import 'package:redux/redux.dart';
import 'package:trying_redux/actions/actions.dart';
import 'package:trying_redux/models/post.dart';

final postReducer = combineReducers<Post>([
  TypedReducer<Post, PostSelectedAction>(_setPost),
]);

Post _setPost(Post post, PostSelectedAction action) {
  return action.post;
}
