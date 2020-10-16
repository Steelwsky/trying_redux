import 'package:redux/redux.dart';
import 'package:trying_redux/data_api/client_api.dart';
import 'package:trying_redux/middleware/navigate_middleware.dart';
import 'package:trying_redux/middleware/store_middleware.dart';
import 'package:trying_redux/models/app_state.dart';
import 'package:trying_redux/reducers/app_reducer.dart';

final store = new Store<AppState>(
  appReducer,
  initialState: AppState(),
  middleware: createStoreMiddleware(ClientApi())
    ..addAll(
      createNavigateMiddleware(),
    ),
);
