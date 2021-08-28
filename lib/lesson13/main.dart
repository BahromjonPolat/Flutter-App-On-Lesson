import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LessonThreeTeenMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lesson 13"),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/lesson10");
                },
                child: Text("Lesson 10")),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/lesson11");
                },
                child: Text("Lesson 11")),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/lesson12");
                },
                child: Text("Lesson 12")),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(
                      context, "/", (route) => false);
                },
                child: Text("Main Page")),

            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(
                      context, "/listPage");
                },
                child: Text("List Page")),
          ],
        ),
      ),
    );
  }
}
