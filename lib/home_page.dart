import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:trying_redux/models/app_state.dart';
import 'package:trying_redux/pages/first_page.dart';
import 'package:trying_redux/pages/second_page.dart';
import 'package:trying_redux/widgets/tab_selector.dart';

import 'models/app_tab.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, AppTab>(
        distinct: true,
        converter: (Store<AppState> store) => store.state.activeTab,
        builder: (context, activeTab) {
          return Scaffold(
            body: activeTab == AppTab.first ? FirstPage() : SecondPage(),
            bottomNavigationBar: TabSelector(),
          );
        });
  }
}
