import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:trying_redux/models/app_state.dart';
import 'package:trying_redux/viewmodels/post_details_view_model.dart';

//todo storeconnector???
class PostDetails extends StatelessWidget {
  PostDetails({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
          child: StoreConnector<AppState, PostDetailsViewModel>(
              converter: PostDetailsViewModel.fromStore,
              builder: (context, vm) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(vm.post.title),
                        Text(vm.post.body),
                        Text(vm.post.userId.toString()),
                      ],
                    ),
                  ),
                );
              })),
    );
  }
}
