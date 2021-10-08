class User {
  String _name;
  String _username;
  String _imageUrl;
  String _color;
  int _birthDate;
  // Address _address;

  User.fromJSON(Map<String, dynamic> json) {
    this._name = json['name'];
    this._username = json['username'];
    this._imageUrl = json['image_url'];
    this._color = json['color'];
    this._birthDate = json['birth_date'];
    // this._address = new Address.fromJSON(json['address']);
  }

  String get name => _name;

  String get username => _username;

  int get birthDate => _birthDate;

  String get color => _color;

  String get imageUrl => _imageUrl;

  // Address get address => _address;
}

class Address {
  String _country;
  String _region;

  Address.fromJSON(Map<String, dynamic> map) {
    this._country = map['country'];
    this._region = map['region'];
  }

  String get region => _region;

  String get country => _country;
}