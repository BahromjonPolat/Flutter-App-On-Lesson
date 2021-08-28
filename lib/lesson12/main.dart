import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_flutter_app/lesson12/second_page.dart';
import 'package:my_flutter_app/lesson12/third_page.dart';

class LessonTwelveMainPage extends StatefulWidget {
  /*
  Navigator.push,
  Navigator.pushAndPopUntil,
  WillPopScope,
   */

  @override
  _LessonTwelveMainPageState createState() => _LessonTwelveMainPageState();
}

class _LessonTwelveMainPageState extends State<LessonTwelveMainPage> {
  Size _size;

  @override
  Widget build(BuildContext context) {
    _size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("First Page"),
      ),
      body: Container(
        width: _size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SecondPage(1, "This Title")));
                },
                child: Text("Route")),
            ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              LessonTwelveThirdPage(5, "Third Page")));
                },
                icon: Icon(CupertinoIcons.forward),
                label: Text("Third Page")),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SecondPage(1, "This Page")))
                      .then((value) => print(value));
                },
                child: Text("Get Text")),
          ],
        ),
      ),
    );
  }
}
