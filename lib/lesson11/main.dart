import 'package:flutter/material.dart';

/*
SliverGrid.count

 */

class LessonElevenMainPage extends StatefulWidget {
  @override
  _LessonElevenMainPageState createState() => _LessonElevenMainPageState();
}

class _LessonElevenMainPageState extends State<LessonElevenMainPage> {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: _bodyWithCustomScrollView(),
    );
  }

  _bodyWithCustomScrollView() => CustomScrollView(
        slivers: [
          SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                _getDynamicSliverList,
                childCount: 5,
              ),
            ),
          )
        ],
      );

  Widget _getDynamicSliverList(BuildContext context, int index) => Container(
        margin: EdgeInsets.all(5.0),
        height: 100,
        color: Colors.orange,
        child: Text("Index: $index"),
      );
}
