import 'package:flutter/material.dart';

// GestureDetector
// SingleChildScrollView

class LessonTenMainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("Lesson 10"),
      ),
      body: _singleChildScrollView(size),
    );
  }



  // GestureDetector
  Widget _body1() {
    return Container(
      alignment: Alignment.center,
      child: GestureDetector(
        child: Container(
          height: 120.0,
          width: 160.0,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.indigo,
            borderRadius: BorderRadius.circular(16.0),
          ),
          child: Text(
            "Click here",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 24.0),
          ),
        ),
        onTap: () {
          print("On Tap was clicked!");
        },
        onDoubleTap: () {
          print("onDoubleTap was clicked!");
        },
        onDoubleTapCancel: () {
          print("onDoubleTapCancel");
        },
        onHorizontalDragStart: (drag) {
          print(drag.globalPosition);
        },
      ),
    );
  }

  Widget _singleChildScrollView(size) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            _getContainers("First", Colors.indigo, size),
            _getContainers("Sec", Colors.red, size),
            _getContainers("First", Colors.black26, size),
            _getContainers("First", Colors.green,size),
          ],
        ),
      ),
    );


  }
  _getContainers(text, color, size) => Container(
    width: size.width * 1.0,
    height: 300,
    color: color,
    child: Text(
      text,
    ),
  );

}
