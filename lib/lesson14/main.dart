import 'package:flutter/material.dart';
import 'package:my_flutter_app/lesson14/screens/car_list_page.dart';
import 'package:my_flutter_app/lesson14/screens/super_mario.dart';

// Mario Game

class LessonFourTeenMainPage extends StatefulWidget {
  @override
  _LessonFourTeenMainPageState createState() => _LessonFourTeenMainPageState();
}

class _LessonFourTeenMainPageState extends State<LessonFourTeenMainPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _getBody(),
    );
  }

  _getBody() => Column(
    children: [
      _goToPage(LessonFourTeenSuperMario(), title: "Super Mario"),
      _goToPage(LessonFourTeenCarListPage(), title: "Rent Car"),
    ],
  );

  _goToPage(page, {String title}) => Expanded(child: GestureDetector(
    child: Container(
      alignment: Alignment.center,
      child: Text(title),
    ),
    onTap: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => page));
    },
  ));

}
