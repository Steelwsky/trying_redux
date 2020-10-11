import 'package:redux/redux.dart';
import 'package:trying_redux/actions/actions.dart';
import 'package:trying_redux/models/post.dart';

final postsReducer = combineReducers<List<Post>>([
  TypedReducer<List<Post>, PostsLoadedAction>(_setLoadedPosts),
]);

List<Post> _setLoadedPosts(List<Post> posts, PostsLoadedAction action) {
  return action.posts;
}