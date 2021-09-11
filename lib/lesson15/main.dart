import 'package:flutter/material.dart';
import 'package:my_flutter_app/lesson15/button_long_press.dart';

class LessonFiveTeenMainPage extends StatefulWidget {

  @override
  _LessonFiveTeenMainPageState createState() => _LessonFiveTeenMainPageState();
}

class _LessonFiveTeenMainPageState extends State<LessonFiveTeenMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lesson 15"),
      ),
      body: _getBody(),
    );
  }

  _getBody() => Container(
    alignment: Alignment.center,
    child: ElevatedButton(
      onPressed: (){
      },
      child: Text("Go"),
    ),
  );
}
