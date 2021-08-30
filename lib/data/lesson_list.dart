import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_flutter_app/lesson10/flexible_space_bar.dart';
import 'package:my_flutter_app/lesson10/main.dart';
import 'package:my_flutter_app/lesson11/main.dart';
import 'package:my_flutter_app/lesson12/main.dart';
import 'package:my_flutter_app/lesson13/main.dart';
import 'package:my_flutter_app/lesson5/shop/main_ui.dart';
import 'package:my_flutter_app/lesson6/homework/home_page.dart';
import 'package:my_flutter_app/lesson7/homework/sport/main.dart';
import 'package:my_flutter_app/lesson8/main.dart';
import 'package:my_flutter_app/lesson9/main.dart';
import 'package:my_flutter_app/model/lesson.dart';

List<Lesson> getLessons = [
  new Lesson("Lesson 5", "5-dars", Icon(CupertinoIcons.shopping_cart),
      MainShoppingPage()),
  new Lesson(
      "Lesson 6", "6-dars", Icon(CupertinoIcons.shopping_cart), ShopHomePage()),
  new Lesson(
      "Lesson 7", "7-dars", Icon(CupertinoIcons.sportscourt), SportMenPage()),
  new Lesson("Lesson 8", "23-08-2021",
      Icon(CupertinoIcons.pencil_ellipsis_rectangle), LessonEight()),
  new Lesson("Lesson 9", "24-08-2021",
      Icon(CupertinoIcons.rectangle_3_offgrid_fill), LessonNineMainPage()),
  new Lesson("Lesson 10", "25-08-2021",
      Icon(CupertinoIcons.selection_pin_in_out), LessonTextFlexPage()),
  new Lesson("Lesson 11", "26-08-2021", Icon(CupertinoIcons.ellipses_bubble),
      LessonElevenMainPage()),
  new Lesson("Lesson 12", "27-08-2021", Icon(CupertinoIcons.add),
      LessonTwelveMainPage()),
  new Lesson(
      "Lesson 13", "28-08-2021", Icon(Icons.ac_unit), LessonThreeTeenMain()),
];
