import 'package:mvvm_apply/model/post_model.dart';

class PostViewModel {
  late PostModel postModel;
  PostViewModel({required this.postModel});
  get id  => postModel.id; 
  get userId  => postModel.userId; 
  get title => postModel.title.toUpperCase(); 
  get body => postModel.body; 

}