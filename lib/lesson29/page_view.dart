import 'package:flutter/material.dart';

class LessonTwentyNinePageView extends StatefulWidget {
  @override
  _LessonTwentyNinePageViewState createState() =>
      _LessonTwentyNinePageViewState();
}

class _LessonTwentyNinePageViewState extends State<LessonTwentyNinePageView> {
  PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _getPageView(),
    );
  }

  _getPageView() => PageView(
        controller: _pageController,
        children: [
          _setPage(Colors.deepOrange, 0),
          _setPage(Colors.green, 1),
          _setPage(Colors.blue, 2),
          _setPage(Colors.yellow, 3),
          _setPage(Colors.indigo, 4),
        ],
      );

  Container _setPage(Color color, int index) => Container(
        color: color,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Page: $index",
              style: TextStyle(
                fontSize: 24.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 24.0,
              child: Row(
                children: List.generate(
                    5,
                    (i) => Icon(
                          Icons.circle,
                          size: (index == i) ? 16 : 9,
                        )),
              ),
            ),
          ],
        ),
      );
}
