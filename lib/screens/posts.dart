import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:trying_redux/models/app_state.dart';
import 'package:trying_redux/models/post.dart';
import 'package:trying_redux/screens/post_details.dart';
import 'package:trying_redux/viewmodels/post_view_model.dart';

class Posts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Flexible(
            flex: 1,
            child: Text('Posts here:'),
          ),
          Flexible(
            flex: 9,
            child: Container(
              child: StoreConnector<AppState, PostViewModel>(
                converter: PostViewModel.fromStore,
                builder: (context, vm) => postsList(context, vm),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget postsList(BuildContext context, PostViewModel postViewModel) => Container(
      child: ListView.builder(
          itemCount: postViewModel.posts.length,
          itemBuilder: (context, index) {
            return ListTile(
                title: Text('${postViewModel.posts[index].title}'),
                onTap: () => postViewModel.navigateToPostDetails(
                      postViewModel.posts[index],
                    ));
          }),
    );

// void _onPostTap({@required BuildContext context, @required Post post}) {
//   Navigator.of(context).push(
//     MaterialPageRoute(
//       builder: (_) => PostDetails(
//         post: post,
//       ),
//     ),
//   );
// }
