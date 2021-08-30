import 'package:flutter/material.dart';

class Lesson {
  String _title;
  String _date;
  String _description;
  Icon _icon;
  Widget _body;

  Lesson(this._title, this._date, this._icon, this._body);


  Widget get body => _body;

  Icon get icon => _icon;

  String get date => _date;

  String get title => _title;

  String get description => _description;
}