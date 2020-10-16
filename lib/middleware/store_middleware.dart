import 'package:redux/redux.dart';
import 'package:trying_redux/actions/actions.dart';
import 'package:trying_redux/data_api/client_api.dart';
import 'package:trying_redux/models/app_state.dart';

  List<Middleware<AppState>> createStoreMiddleware(
    final ClientApi clientApi,
  ) {
    final loadPosts = _createLoadPosts(clientApi);
    final loadComments = _createLoadComments(clientApi);
    return [
      TypedMiddleware<AppState, PostsLoadAction>(loadPosts),
      TypedMiddleware<AppState, PostsLoadAction>(loadComments),
    ];
  }

  Middleware<AppState> _createLoadPosts(ClientApi clientApi) {
    print('_createLoadPosts');
    return (Store<AppState> store, action, NextDispatcher next) {
      clientApi.fetchAndSerializePosts().then((list) {
        store.dispatch(
          PostsLoadedAction(posts: list),
        );
        print(list);
      }).catchError(
        (_) => store.dispatch(
          PostsNotLoadedAction(),
        ),
      );

      next(action); // todo need to understand ?????
    };
  }

  Middleware<AppState> _createLoadComments(ClientApi clientApi) {
    return (Store<AppState> store, action, NextDispatcher next) {
      clientApi.fetchAndSerializeComments().then((list) {
        store.dispatch(
          CommentsLoadedAction(comments: list),
        );
      }).catchError(
        (_) => store.dispatch(
          CommentsNotLoadedAction(),
        ),
      );

      next(action);
    };
  }

