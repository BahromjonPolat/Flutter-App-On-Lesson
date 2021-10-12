class Post {
  int _userId;
  int _id;
  String _title;
  String _body;


  int get userId => _userId;
  int get id => _id;
  String get title => _title;
  String get body => _body;

  Post.fromJson(Map<String, dynamic> json) {
    _userId = json['userId'];
    _id = json['id'];
    _title = json['title'];
    _body = json['body'];
  }

}
