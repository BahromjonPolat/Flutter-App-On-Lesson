import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

// Mario Game

class LessonFourTeenSuperMario extends StatefulWidget {
  @override
  _LessonFourTeenSuperMarioState createState() =>
      _LessonFourTeenSuperMarioState();
}

class _LessonFourTeenSuperMarioState extends State<LessonFourTeenSuperMario> {
  Size _size;
  double _y = 1.0;
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
          _getNatureIcons(),
          Expanded(
              child: Row(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  color: Colors.blue,
                  alignment: Alignment(0.7, _y),
                  child: Container(
                    height: _size.width * 0.2,
                    width: _size.width * 0.2,
                    child: Image.asset("images/mario.png"),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  color: Colors.blue,
                  height: _size.height * 1.0,
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: _size.width * 0.25,
                    width: _size.width * 0.2,
                    child: Image.asset("images/mario_wall.png"),
                  ),
                ),
              ),
            ],
          )),
          Expanded(
              child: Container(
            width: _size.width,
            color: Colors.green[800],
            alignment: Alignment.center,
            child: _jump(),
          )),
        ],
      );

  _jump() => ElevatedButton(
      onPressed: () async {
        for (int i = 0; i < 100; i++) {
          await Future.delayed(Duration(milliseconds: 5), () {
            setState(() {
              if (isToUp) {
                _y -= 0.02;
                if (_y <= -0.0) isToUp = false;
              } else if (!isToUp) {
                _y += 0.02;
                if (_y >= 1.0) {
                  isToUp = true;
                  isJump = !isJump;
                }
              }
            });
          });

          /// Agar Marioning pozitsiyasi 0.0 ga teng bo`lsa va harakatlanmayotgan
          /// bo`lsa isJump`ning qiymatini true qiladi va loop`ni sindiradi.
          if (!isJump) {
            isJump = !isJump;
            break;
          }
        }
      },
      child: Text("JUMP"));

  _getNatureIcons() => Container(
        padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
        color: Colors.blue,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(
                  Icons.wb_sunny,
                  size: 64.0,
                  color: Colors.amber,
                ),
                Icon(
                  Icons.cloud,
                  size: 44.0,
                  color: Colors.white,
                ),
                Icon(
                  Icons.wb_cloudy_outlined,
                  size: 64.0,
                  color: Colors.white,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  transform: Matrix4.rotationZ(45),
                  child: Icon(
                    Icons.airplanemode_on_outlined,
                    size: 64.0,
                    color: Colors.blueGrey,
                  ),
                ),
                Transform.translate(
                  offset: Offset(0.0, 25.0),
                  child: Text(
                    "Super Mario",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 32.0),
                  ),
                ),
                Icon(
                  Icons.cloud,
                  size: 64.0,
                  color: Colors.white,
                ),
              ],
            ),
          ],
        ),
      );
}
