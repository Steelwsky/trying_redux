import 'package:redux/redux.dart';
import 'package:trying_redux/actions/actions.dart';
import 'package:trying_redux/models/comment.dart';

final commentsReducer = combineReducers<List<Comment>>([
  TypedReducer<List<Comment>, CommentsLoadedAction>(_setLoadedComments),
]);

List<Comment> _setLoadedComments(List<Comment> posts, CommentsLoadedAction action) {
  return action.comments;
}
