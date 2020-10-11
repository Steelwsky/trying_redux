import 'package:redux/redux.dart';
import 'package:trying_redux/actions/actions.dart';
import 'package:trying_redux/models/app_tab.dart';

final tabsReducer = combineReducers<AppTab>([
  TypedReducer<AppTab, UpdateTabAction>(_activeTabReducer),
]);

AppTab _activeTabReducer(AppTab activeTab, UpdateTabAction action) {
  return action.newTab;
}
