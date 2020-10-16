import 'package:redux/redux.dart';
import 'package:trying_redux/models/app_state.dart';
import 'package:trying_redux/models/post.dart';

class PostDetailsViewModel {
  final Post post;

  PostDetailsViewModel({
    this.post,
  });

  static PostDetailsViewModel fromStore(Store<AppState> store) {
    return PostDetailsViewModel(
      post: store.state.chosenPost,
    );
  }
}
