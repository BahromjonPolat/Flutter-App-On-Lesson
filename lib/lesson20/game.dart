import 'dart:math';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class LessonTwentyGamePage extends StatefulWidget {
  @override
  _LessonTwentyGamePageState createState() => _LessonTwentyGamePageState();
}

class _LessonTwentyGamePageState extends State<LessonTwentyGamePage> {
  int _randomNumber = 1 + Random().nextInt(11);
  int _chance = 3;
  Size _size;
  int _init;
  int _end;

  List<bool> _isPressedList = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    true
  ];

  @override
  Widget build(BuildContext context) {
    print("Random number: $_randomNumber");
    _size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(title: Text("Find Random Number")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            "Tasodifiy sonni topish o`yini",
            style: TextStyle(
              color: Colors.green,
              fontWeight: FontWeight.bold,
              fontSize: 24.0,
            ),
          ),
          Container(height: _size.height * 0.65, child: _getNumber()),
        ],
      ),
    );
  }

  GridView _getNumber() => GridView.count(
        padding: EdgeInsets.symmetric(horizontal: 8.0),
        mainAxisSpacing: 8.0,
        crossAxisSpacing: 8.0,
        crossAxisCount: 3,
        children: List.generate(11, (index) => _getNumberButton(index + 1)),
      );

  ElevatedButton _getNumberButton(int number) {
    return ElevatedButton(
        style: _getButtonStyle(number),
        onPressed: (_isPressedList[number - 1])
            ? () {
                if (number == 11) {
                  for (int i = 0; i < 11; i++) _isPressedList[i] = !_isPressedList[i];
                  _init = DateTime.now().second;
                } else {
                  if (_randomNumber == number) {
                    {
                      _end = DateTime.now().second;
                      _showDialog(true);
                    }
                  } else if (_randomNumber > number) {
                    _chance--;
                    Fluttertoast.showToast(msg: "Number is bigger!");
                  } else if (_randomNumber < number) {
                    _chance--;
                    Fluttertoast.showToast(msg: "Number is smaller!");
                  }
                }

                if (_chance == 0) {
                  _end = DateTime.now().second;
                  _showDialog(false);
                }
                _isPressedList[number - 1] = false;
                setState(() {});
              }
            : null,
        child: Text((number == 11) ? "Start" : "$number"));
  }

  ButtonStyle _getButtonStyle(int index) => ElevatedButton.styleFrom(
        primary: (index == 11) ? Colors.green : Colors.blue,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
      );

  void _showDialog(bool isWon) {
    int time = _end - _init;
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: isWon ? Text("You Won!") : Text("You Lose!"),
              content: Container(
                child: Text("Sarflangan vaqt: $time soniya"),
              ),
            ));
  }
}
