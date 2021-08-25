
import 'package:flutter/cupertino.dart';
import 'package:my_flutter_app/lesson10/flexible_space_bar.dart';
import 'package:my_flutter_app/lesson10/main.dart';
import 'package:my_flutter_app/lesson5/shop/main_ui.dart';
import 'package:my_flutter_app/lesson6/homework/home_page.dart';
import 'package:my_flutter_app/lesson7/homework/sport/main.dart';
import 'package:my_flutter_app/lesson8/main.dart';
import 'package:my_flutter_app/lesson9/main.dart';
import 'package:my_flutter_app/ui/ui_list/model/lesson.dart';

List<Lesson> getLessons() {
  List<Lesson> lessons = [];
  lessons.add(new Lesson("Lesson 5", "5-dars", Icon(CupertinoIcons.shopping_cart), MainShoppingPage()));
  lessons.add(new Lesson("Lesson 6", "6-dars", Icon(CupertinoIcons.shopping_cart), ShopHomePage()));
  lessons.add(new Lesson("Lesson 7", "7-dars", Icon(CupertinoIcons.sportscourt), SportMenPage()));
  lessons.add(new Lesson("Lesson 8", "23-08-2021", Icon(CupertinoIcons.pencil_ellipsis_rectangle), LessonEight()));
  lessons.add(new Lesson("Lesson 9", "24-08-2021", Icon(CupertinoIcons.rectangle_3_offgrid_fill), LessonNineMainPage()));
  lessons.add(new Lesson("Lesson 10", "25-08-2021", Icon(CupertinoIcons.selection_pin_in_out), LessonTextFlexPage()));

  return lessons;
}