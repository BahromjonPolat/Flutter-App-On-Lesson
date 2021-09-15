import 'dart:math';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:my_flutter_app/lesson21/stepper_page.dart';

class LessonTwentyOneMainPage extends StatefulWidget {
  @override
  _LessonTwentyOneMainPageState createState() =>
      _LessonTwentyOneMainPageState();
}

class _LessonTwentyOneMainPageState extends State<LessonTwentyOneMainPage> {
  int _randomNumber = Random().nextInt(10) + 1;
  List<bool> _buttonStatus = List.generate(12, (index) => true);
  int _chance = 3;
  int _seconds = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _getAppBar(),
      body: _getBody(),
    );
  }

  _getAppBar() => AppBar(
        // toolbarTextStyle: TextStyle(color: Colors.deepOrange),
        title: Text("Lesson 21 | $_seconds"),
        actions: [
          IconButton(
            icon: Icon(Icons.refresh),
            onPressed: () {
              _randomNumber = Random().nextInt(10) + 1;
              _buttonStatus = List.generate(12, (index) => true);
              _onStart();
            },
          ),
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => LessonTwentyOneStepperPage(),
                    ));
              },
              icon: Icon(Icons.other_houses))
        ],
      );

  _getBody() => Container(
        padding: EdgeInsets.all(12.0),
        child: _getButtonList(),
      );

  _getButtonList() => GridView.builder(
      itemCount: 12,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 12.0,
        mainAxisSpacing: 12.0,
      ),
      itemBuilder: (context, index) {
        return _getNumberButton(index);
      });

  ElevatedButton _getNumberButton(int index) {
    int number = index + 1;
    return ElevatedButton(
      child: Text(
        "$number",
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32.0),
      ),
      style: _getButtonStyle(),
      onPressed: _buttonStatus[index]
          ? () {
              if (_randomNumber > number) {
                for (int i = 0; i <= index; i++) _buttonStatus[i] = false;
              } else if (_randomNumber < number) {
                for (int i = index; i < 12; i++) _buttonStatus[i] = false;
              } else {
                Fluttertoast.showToast(msg: "You Won");
              }
              _chance--;
            }
          : null,
    );
  }

  _getButtonStyle() => ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(100.0),
      ));

  void _onStart() async {
    for (int i = _seconds; i > 0; i--) {
      await Future.delayed(Duration(seconds: 1), () {
        _seconds--;
        _setState();
      });
    }
  }

  void _setState() {
    setState(() {});
  }
}
