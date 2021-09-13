import 'package:flutter/material.dart';

/*
CheckBox,
CheckBoxListTile,
Radio
 */

class LessonNineTeenMainPage extends StatefulWidget {
  @override
  _LessonNineTeenMainPageState createState() => _LessonNineTeenMainPageState();
}

class _LessonNineTeenMainPageState extends State<LessonNineTeenMainPage> {
  bool _checkBoxCurrentState = false;
  bool _isSwitched = false;
  String _radioGroup = "gender";
  double _sliderCurrentPosition = 0.0;
  int coloring = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _getAppBar(),
      body: _getBody(),
    );
  }

  AppBar _getAppBar() => AppBar(
        shadowColor: Colors.transparent,
        title: Text("Lesson 19"),
        backgroundColor:
            (coloring == 0) ? Colors.transparent : Colors.green[coloring],
        elevation: 0.0,
      );

  _getBody() => Container(
        child: Column(
          children: [
            CheckboxListTile(
                activeColor: Colors.green,
                controlAffinity: ListTileControlAffinity.leading,
                title: Text("CheckBox Title"),
                subtitle: Text("CheckBox Subtitle"),
                selected: _checkBoxCurrentState,
                value: _checkBoxCurrentState,
                onChanged: (value) {
                  setState(() {
                    _checkBoxCurrentState = value;
                  });
                }),
            Checkbox(
                value: _checkBoxCurrentState,
                onChanged: (value) {
                  setState(() {
                    _checkBoxCurrentState = value;
                  });
                }),
            RadioListTile(
                activeColor: Colors.green,
                title: Text("Male"),
                value: "Male",
                groupValue: _radioGroup,
                onChanged: (value) {
                  _radioGroup = value.toString();
                  setState(() {
                    print(_radioGroup);
                  });
                }),
            RadioListTile(
                activeColor: Colors.green,
                title: Text("Female"),
                value: "Female",
                groupValue: _radioGroup,
                onChanged: (value) {
                  _radioGroup = value.toString();
                  setState(() {
                    print(_radioGroup);
                  });
                }),
            SwitchListTile(
                activeColor: Colors.green,
                title: Text("TV Power"),
                subtitle: Text("TV On / Off remote"),
                secondary: _isSwitched
                    ? Icon(Icons.tv, color: Colors.green)
                    : Icon(Icons.tv_off, color: Colors.red),
                value: _isSwitched,
                onChanged: (value) {
                  setState(() {
                    _isSwitched = !_isSwitched;
                  });
                }),
            Slider(
                min: 0.0,
                max: 9.0,
                label: "$_sliderCurrentPosition",
                activeColor: Colors.green,
                divisions: 9,
                // thumbColor: Colors.yellow,
                value: _sliderCurrentPosition,
                onChanged: (position) {
                  setState(() {
                    _sliderCurrentPosition = position;
                    coloring = position.toInt() * 100;
                  });
                  print("Position: $position");
                })
          ],
        ),
      );
}
