import 'package:redux/redux.dart';
import 'package:trying_redux/actions/actions.dart';
import 'package:trying_redux/models/app_state.dart';
import 'package:trying_redux/models/post.dart';

class PostViewModel {
  final List<Post> posts;

  final Function(Post post) navigateToPostDetails;

  PostViewModel({
    this.posts,
    this.navigateToPostDetails,
  });

  static PostViewModel fromStore(Store<AppState> store) {
    return PostViewModel(
        posts: store.state.posts,
        navigateToPostDetails: (post) {
          print('post is: ${post.title}');
          store.dispatch(
            NavigateToPostDetailsAction(post: post),
          );
        });
  }
}
