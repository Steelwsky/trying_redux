import 'package:redux/redux.dart';
import 'package:trying_redux/actions/actions.dart';
import 'package:trying_redux/keys.dart';
import 'package:trying_redux/models/app_state.dart';

List<Middleware<AppState>> createNavigateMiddleware() {
  final navigate = _navigateToPostDetails();

  return [
    TypedMiddleware<AppState, NavigateToPostDetailsAction>(navigate),
  ];
}

Middleware<AppState> _navigateToPostDetails() {
  print('_navigateToPostDetails init');
  return (Store<AppState> store, action, NextDispatcher next) {
    if(action is NavigateToPostDetailsAction) {
      print('_navigateToPostDetails');

      Keys.navKey.currentState.pushNamed('/postDetails');
      store.dispatch(PostSelectedAction(post: action.post));
      next(action);
    }
  };
}
