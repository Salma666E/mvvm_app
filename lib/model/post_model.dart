class PostModel {
  late int id;
  late int userId;
  late String title;
  late String body;
  PostModel(
      {required this.id,
      required this.userId,
      required this.title,
      required this.body});
  PostModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['userId'];
    title = json['title'];
    body = json['body'];
  }
  Map<String, dynamic> toJson() {
    return {"id": id, "userId": userId, "title": title, "body": body};
  }
}
