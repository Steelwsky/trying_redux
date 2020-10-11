import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:trying_redux/home_page.dart';
import 'package:trying_redux/models/app_state.dart';
import 'package:trying_redux/store/app_store.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp(store: store));
}

class MyApp extends StatelessWidget {
  final Store store;

  MyApp({@required this.store});

  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
      store: store,
      child: MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        routes: {
          '/': (context) {
            return MyHomePage();
          }
        },
      ),
    );
  }
}
