import 'package:flutter/material.dart';

class LessonEightTeenProfilePage extends StatelessWidget {

  String username;
  LessonEightTeenProfilePage(this.username);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(username),),
    );
  }
}
