import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'dart:io';

import 'package:my_flutter_app/lesson20/game.dart';

class LessonTwentyMainPage extends StatefulWidget {
  @override
  _LessonTwentyMainPageState createState() => _LessonTwentyMainPageState();
}

class _LessonTwentyMainPageState extends State<LessonTwentyMainPage> {
  Color _bgColor = Colors.blue;

  DateTime _now = DateTime.now();
  DateTime _startedDate = DateTime(1950);
  DateTime _endDate = DateTime(2050);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: _bgColor,
        title: Text("Lesson 20"),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _getDropDown(),
            _showDatePicker(),
            _showCupertinoDatePicker(),
            _showTime(),
            _goToGame()
          ],
        ),
      ),
    );
  }

  _getDropDown() => DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          hint: Text(
            "Choose color",
            style: TextStyle(color: Colors.deepOrange),
          ),
          items: [
            DropdownMenuItem(child: Text("White"), value: "white"),
            DropdownMenuItem(child: Text("Black"), value: "black"),
            DropdownMenuItem(child: Text("Red"), value: "red"),
            DropdownMenuItem(child: Text("Blue"), value: "blue"),
          ],
          onChanged: (value) {
            setState(() {
              if (value == "white")
                _bgColor = Colors.white;
              else if (value == "black")
                _bgColor = Colors.black;
              else if (value == "red")
                _bgColor = Colors.red;
              else if (value == "blue") _bgColor = Colors.blue;
            });
          },
        ),
      );

  List<DropdownMenuItem> _dropDownMenuItems = [
    DropdownMenuItem(child: Text("White")),
    DropdownMenuItem(child: Text("Black")),
    DropdownMenuItem(child: Text("Red")),
    DropdownMenuItem(child: Text("Blue")),
  ];

  ElevatedButton _showDatePicker() => ElevatedButton(
      onPressed: () {
        showDatePicker(
                context: context,
                initialDate: _now,
                firstDate: _startedDate,
                lastDate: _endDate)
            .then((value) => Fluttertoast.showToast(msg: "$value"));
      },
      child: Text("Show Date"));

  ElevatedButton _showCupertinoDatePicker() => ElevatedButton(
      onPressed: () {
        showModalBottomSheet(
            enableDrag: true,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(16.0),
                    topLeft: Radius.circular(16.0))),
            context: context,
            builder: (context) {
              return CupertinoDatePicker(
                  minimumDate: _startedDate,
                  maximumDate: _endDate,
                  initialDateTime: _now,
                  use24hFormat: true,
                  mode: CupertinoDatePickerMode.date,
                  onDateTimeChanged: (value) {
                    Fluttertoast.showToast(msg: "$value");
                  });
            });
      },
      child: Text("Show Cupertino Date"));

  ElevatedButton _showTime() => ElevatedButton(
      onPressed: () {
        Platform.isAndroid
            ? showTimePicker(context: context, initialTime: TimeOfDay.now())
            : showModalBottomSheet(
                context: context,
                builder: (context) {
                  return CupertinoTimerPicker(onTimerDurationChanged: (v) {});
                });
      },
      child: Text("Show Time"));

  ElevatedButton _goToGame() => ElevatedButton(
      onPressed: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => LessonTwentyGamePage()));
      },
      child: Text("Go"));
}
