import 'package:flutter/material.dart';
import 'package:my_flutter_app/lesson11/main.dart';
import 'package:my_flutter_app/lesson13/details.dart';
import 'package:my_flutter_app/lesson13/list_page.dart';
import 'package:my_flutter_app/lesson6/homework/home_page.dart';
import 'package:my_flutter_app/ui/ui_list/main.dart';

import 'lesson10/main.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        "/": (context) => LessonListPage(),
        "/lesson10": (context) => LessonTenMainPage(),
        "/lesson11": (context) => LessonElevenMainPage(),
        "/listPage": (context) => LessonThreeTeenListPage(),
      },
      onUnknownRoute: (settings) =>
          MaterialPageRoute(builder: (context) => LessonListPage()),
      onGenerateRoute: (setting) {
        print(setting.name);
        List<String> path = setting.name.split('/');
        print(path);
        if (path[1] == 'details')
          return MaterialPageRoute(builder: (c) {
            return LessonThreeTeenDetailsPage(
              index: int.parse(path[2]),
            );
          });
        return MaterialPageRoute(builder: (_) => LessonListPage());
      },
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.green,
        accentColor: Colors.greenAccent,
      ),
    );
  }
}
