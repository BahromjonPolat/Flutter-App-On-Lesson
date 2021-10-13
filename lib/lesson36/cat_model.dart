class Cat {
  String _description;
  String _imageUrl;
  int _statusCode;

  String get description => _description;

  String get imageUrl => _imageUrl;

  int get statusCode => _statusCode;

  Cat.fromJson(Map<String, dynamic> json) {
    _description = json['description'];
    _imageUrl = json['imageUrl'];
    _statusCode = json['statusCode'];
  }
}
