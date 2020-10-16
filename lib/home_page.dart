import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:trying_redux/actions/actions.dart';
import 'package:trying_redux/models/app_state.dart';
import 'package:trying_redux/screens/posts.dart';
import 'package:trying_redux/screens/second_page.dart';
import 'package:trying_redux/widgets/tab_selector.dart';

import 'models/app_tab.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({
    Key key,
  }) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, AppTab>(
        distinct: true,
        onInit: (store) => store.dispatch(PostsLoadAction()),
        converter: (Store<AppState> store) => store.state.activeTab,
        builder: (context, activeTab) {
          return Scaffold(
            body: activeTab == AppTab.first ? Posts() : SecondPage(),
            bottomNavigationBar: TabSelector(),
          );
        });
  }
}
