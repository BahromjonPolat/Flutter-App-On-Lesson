class Post {
  int _id;
  int _userId;
  String _imageUrl;
  String _postBody;

  Post(this._id, this._userId, this._imageUrl, this._postBody);

  String get postBody => _postBody;

  String get imageUrl => _imageUrl;

  int get userId => _userId;

  int get id => _id;
}