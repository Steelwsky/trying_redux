import 'package:redux/redux.dart';
import 'package:trying_redux/models/app_state.dart';
import 'package:trying_redux/reducers/app_reducer.dart';

final store = new Store<AppState>(appReducer, initialState: AppState());
