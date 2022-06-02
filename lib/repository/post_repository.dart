import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:mvvm_apply/model/post_model.dart';

class PostRepository {
  Future<List<PostModel>> getAllPosts() async {
    List<PostModel> postsList = [];
    try {
      var response =
          await Dio().get('https://jsonplaceholder.typicode.com/posts');
      var list = response.data as List;
      postsList = list.map((post) => PostModel.fromJson(post)).toList();
    } catch (exception) {
      log(exception.toString());
    }
      return postsList;
  }

  // Future<PostModel> getPostById(int id);
}
