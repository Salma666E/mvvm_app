import 'package:mvvm_apply/model/post_model.dart';
import 'package:mvvm_apply/repository/post_repository.dart';
import 'package:mvvm_apply/view_model/post_view_model.dart';

class HomeApiViewModel {
  String title = 'Posts';
  PostRepository? postRepository;
  HomeApiViewModel({this.postRepository});
  Future<List<PostViewModel>> fetchAllPosts() async {
    List<PostModel> posts = await postRepository!.getAllPosts();
    return posts.map((post) => PostViewModel(postModel: post)).toList();
  }
}
