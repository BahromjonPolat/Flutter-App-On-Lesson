import 'package:flutter/material.dart';

// Mario Game

class LessonFourTeenMainPage extends StatefulWidget {
  @override
  _LessonFourTeenMainPageState createState() => _LessonFourTeenMainPageState();
}

class _LessonFourTeenMainPageState extends State<LessonFourTeenMainPage> {
  Size _size;
  double _y = 0.0;
  bool isToUp = true;
  bool isJump = true;

  @override
  Widget build(BuildContext context) {
    _size = MediaQuery.of(context).size;
    return Scaffold(
      body: _getMarioPage(),
    );
  }

  _getMarioPage() => Column(
        children: [
          Expanded(
              child: Container(
            color: Colors.teal,
            width: _size.width * 1.0,
            alignment: Alignment(0.0, _y),
            child: Container(
              height: _size.width * 0.2,
              width: _size.width * 0.2,
              child: Image.asset("images/mario.png"),
            ),
          )),
          _jump(),
        ],
      );

  _jump() => ElevatedButton(
      onPressed: () async {
        for (int i = 0; i < 100; i++) {
          await Future.delayed(Duration(milliseconds: 10), () {
            setState(() {
              if (isToUp) {
                _y -= 0.03;
                if (_y <= -0.5) isToUp = false;
              } else if (!isToUp) {
                _y += 0.03;
                if (_y >= 0.0) {
                  isToUp = true;
                  isJump = !isJump;
                }
              }
            });
          });
          if (!isJump) {
            isJump = !isJump;
            break;
          }
        }
      },
      child: Text("JUMP"));
}
