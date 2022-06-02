import 'package:flutter/material.dart';
import 'package:mvvm_apply/repository/post_repository.dart';
import 'package:mvvm_apply/view_model/home_api_view_model.dart';
import 'package:mvvm_apply/view_model/post_view_model.dart';

class HomeApi extends StatefulWidget {
  const HomeApi({Key? key}) : super(key: key);

  @override
  State<HomeApi> createState() => Dependency();
}

class Dependency extends State<HomeApi> {
  // Dependency injection
  var postsViewModel = HomeApiViewModel(postRepository: PostRepository());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(postsViewModel.title),
      ),
      body: Center(
        child: FutureBuilder<List<PostViewModel>>(
            future: postsViewModel.fetchAllPosts(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const CircularProgressIndicator();
              } else {
                var posts = snapshot.data!;
                return ListView.builder(
                    itemCount: posts.length,
                    itemBuilder: (context, index) => ListTile(
                          title: Text(posts[index].title),
                        ));
              }
            }),
      ),
    );
  }
}
