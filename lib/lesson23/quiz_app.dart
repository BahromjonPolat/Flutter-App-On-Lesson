import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:my_flutter_app/lesson23/quiz_model.dart';

class LessonTwentyThreeQuizApp extends StatefulWidget {
  @override
  _LessonTwentyThreeQuizAppState createState() =>
      _LessonTwentyThreeQuizAppState();
}

class _LessonTwentyThreeQuizAppState extends State<LessonTwentyThreeQuizApp> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Quiz App"),
      ),
      body: _getBody(),
    );
  }

  _getBody() => Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              Questions.questions[_currentIndex],
              style: TextStyle(
                color: Colors.black,
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Container(
              height: 280,
              child: ListView.builder(
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    String answer = Questions.answers[_currentIndex][index];
                    return Card(
                      child: ListTile(
                        title: Text(answer),
                        onTap: () {
                          if (index == Questions.answers[_currentIndex][3]) {
                            Fluttertoast.showToast(msg: "Congratulations");
                          } else {
                            Fluttertoast.showToast(msg: "Wrong!");
                          }

                          if (_currentIndex < 4)
                            _currentIndex++;
                          else
                            Fluttertoast.showToast(msg: "Game finish");
                          setState(() {});
                        },
                      ),
                    );
                  }),
            ),
          ],
        ),
      );
}
