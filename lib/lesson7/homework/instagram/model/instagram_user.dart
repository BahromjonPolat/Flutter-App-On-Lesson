class User {
  int _id;
  String _username;
  String _profileImage;
  bool _hasStory;

  User(this._id, this._username, this._profileImage, this._hasStory);

  bool get hasStory => _hasStory;

  String get profileImage => _profileImage;

  String get username => _username;

  int get id => _id;
}