import 'package:flutter/material.dart';

class AnimationPage extends StatefulWidget {
  @override
  _AnimationPage createState() => _AnimationPage();
}

class _AnimationPage extends State<AnimationPage> {
  double x = 0.0;
  double y = 0.0;
  int line = 0;

  @override
  Widget build(BuildContext context) {
    makeAnimation();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Animation Page",
        ),
      ),
      body: Center(
        child: Container(
          alignment: Alignment(x, y),
          child: CircleAvatar(
            radius: 32.0,
          ),
        ),
      ),
    );
  }

  makeAnimation() async {
    for (int i = 0; i < 10; i++) {
      await Future.delayed(Duration(seconds: 1), () {
        setState(() {

          if (x <= 1.0 && x >= -1.0) {
            print("XXXX");
            x += 0.01;
            if (x >= 1.0) {
              x = -x;
            }
          }
        });
      });
    }
  }
}
