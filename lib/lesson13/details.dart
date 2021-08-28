import 'package:flutter/material.dart';

class LessonThreeTeenDetailsPage extends StatelessWidget {

  int index;
  LessonThreeTeenDetailsPage({this.index});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Index: $index"),),
    );
  }
}
