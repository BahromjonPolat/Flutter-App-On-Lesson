import 'package:flutter/material.dart';

class Lesson {
  String _title;
  String _subTitle;
  Icon _icon;
  StatefulWidget _body;

  Lesson(this._title, this._subTitle, this._icon, this._body);


  StatefulWidget get body => _body;

  Icon get icon => _icon;

  String get subTitle => _subTitle;

  String get title => _title;


}