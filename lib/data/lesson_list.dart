import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_flutter_app/lesson10/flexible_space_bar.dart';
import 'package:my_flutter_app/lesson11/main.dart';
import 'package:my_flutter_app/lesson12/main.dart';
import 'package:my_flutter_app/lesson13/main.dart';
import 'package:my_flutter_app/lesson14/main.dart';
import 'package:my_flutter_app/lesson15/main.dart';
import 'package:my_flutter_app/lesson18/form_fields.dart';
import 'package:my_flutter_app/lesson19/homework.dart';
import 'package:my_flutter_app/lesson20/main.dart';
import 'package:my_flutter_app/lesson21/main.dart';
import 'package:my_flutter_app/lesson22/main.dart';
import 'package:my_flutter_app/lesson23/quiz_app.dart';
import 'package:my_flutter_app/lesson25/telegram.dart';
import 'package:my_flutter_app/lesson29/main.dart';
import 'package:my_flutter_app/lesson30/main.dart';
import 'package:my_flutter_app/lesson31/main.dart';
import 'package:my_flutter_app/lesson32/main.dart';
import 'package:my_flutter_app/lesson33/main.dart';
import 'package:my_flutter_app/lesson34/main.dart';
import 'package:my_flutter_app/lesson36/main.dart';
import 'package:my_flutter_app/lesson39/main.dart';
import 'package:my_flutter_app/lesson5/shop/main_ui.dart';
import 'package:my_flutter_app/lesson6/homework/home_page.dart';
import 'package:my_flutter_app/lesson7/homework/sport/main.dart';
import 'package:my_flutter_app/lesson8/main.dart';
import 'package:my_flutter_app/lesson9/main.dart';
import 'package:my_flutter_app/model/lesson.dart';

List<Lesson> getLessons = [
  new Lesson(
    "Lesson 5",
    "5-dars",
    Icon(CupertinoIcons.shopping_cart),
    MainShoppingPage(),
  ),
  new Lesson(
    "Lesson 6",
    "6-dars",
    Icon(CupertinoIcons.shopping_cart),
    ShopHomePage(),
  ),
  new Lesson(
    "Lesson 7",
    "7-dars",
    Icon(CupertinoIcons.sportscourt),
    SportMenPage(),
  ),
  new Lesson(
    "Lesson 8",
    "23-08-2021",
    Icon(CupertinoIcons.pencil_ellipsis_rectangle),
    LessonEight(),
  ),
  new Lesson(
    "Lesson 9",
    "24-08-2021",
    Icon(CupertinoIcons.rectangle_3_offgrid_fill),
    LessonNineMainPage(),
  ),
  new Lesson(
    "Lesson 10",
    "25-08-2021",
    Icon(CupertinoIcons.selection_pin_in_out),
    LessonTextFlexPage(),
  ),
  new Lesson(
    "Lesson 11",
    "26-08-2021",
    Icon(CupertinoIcons.ellipses_bubble),
    LessonElevenMainPage(),
  ),
  new Lesson(
    "Lesson 12",
    "27-08-2021",
    Icon(CupertinoIcons.add),
    LessonTwelveMainPage(),
  ),
  new Lesson(
    "Lesson 13",
    "28-08-2021",
    Icon(Icons.ac_unit),
    LessonThreeTeenMain(),
  ),
  new Lesson(
    "Lesson 14",
    "05-09-2021",
    Icon(Icons.sd_storage_outlined),
    LessonFourTeenMainPage(),
  ),
  new Lesson(
    "Lesson 15",
    "06-09-2021",
    Icon(Icons.menu_book_sharp),
    LessonFiveTeenMainPage(),
  ),
  new Lesson(
    "Lesson 18",
    "10-09-2021",
    Icon(Icons.login),
    LessonEightTeenLoginFormPage(),
  ),
  new Lesson(
    "Lesson 19",
    "13-09-2021",
    Icon(Icons.add_circle_outline_rounded),
    LessonNineTeenHomeworkPage(),
  ),
  new Lesson(
    "Lesson 20",
    "14-09-2021",
    Icon(Icons.play_lesson),
    LessonTwentyMainPage(),
  ),
  new Lesson(
    "Lesson 21",
    "15-09-2021",
    Icon(Icons.add_circle_outline_rounded),
    LessonTwentyOneMainPage(),
  ),
  new Lesson(
    "Lesson 22",
    "16-09-2021",
    Icon(Icons.add_circle_outline_rounded),
    LessonTwentyTwoMainPage(),
  ),
  new Lesson(
    "Lesson 23",
    "17-09-2021",
    Icon(Icons.quiz_outlined),
    LessonTwentyThreeQuizApp(),
  ),
  new Lesson(
    "Lesson 25",
    "21-09-2021",
    Icon(Icons.send_rounded),
    LessonTwentyFiveTelegramMain(),
  ),
  new Lesson(
    "Lesson 29",
    "27-09-2021",
    Icon(Icons.add),
    LessonTwentyNineMainPage(),
  ),
  new Lesson(
    "Lesson 30",
    "28-09-2021",
    Icon(Icons.label),
    LessonThirtyMainPage(),
  ),
  new Lesson(
    "Lesson 31",
    "29-09-2021",
    Icon(Icons.leak_add_sharp),
    LessonThirtyOneMainPage(),
  ),
  new Lesson(
    "Lesson 32",
    "01-10-2021",
    Icon(Icons.leak_add_sharp),
    LessonThirtyTwoMainPage(),
  ),
  new Lesson(
    "Lesson 33",
    "05-10-2021",
    Icon(Icons.add_circle_outline_rounded),
    LessonThirtyThreeMainPage(),
  ),
  new Lesson(
    "Lesson 34",
    "06-10-2021",
    Icon(Icons.add_circle_outline_rounded),
    LessonThirtyFourMain(),
  ),
  new Lesson(
    "Lesson 36",
    "11-10-2021",
    Icon(Icons.alarm),
    LessonThirtySixMainPage(),
  ),
  new Lesson(
    "Lesson 39",
    "13-10-2021",
    Icon(Icons.seven_k),
    LessonThirtyNineMain(),
  ),
];
