import 'package:flutter/material.dart';
import 'package:my_flutter_app/lesson5/shop/main_ui.dart';
import 'package:my_flutter_app/lesson6/homework/home_page.dart';
import 'package:my_flutter_app/lesson6/homework/product_info_page.dart';
import 'package:my_flutter_app/lesson6/homework/product_list.dart';
import 'package:my_flutter_app/lesson7/homework/instagram/main.dart';
import 'package:my_flutter_app/lesson7/homework/sport/main.dart';
import 'package:my_flutter_app/lesson7/homework/sport/statistics_page.dart';
import 'package:my_flutter_app/lesson7/ui/list_view_ui.dart';
import 'package:my_flutter_app/lesson7/ui/main.dart';
main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.green,
        accentColor: Colors.greenAccent,
      ),
      home: ShopHomePage(),
    );
  }
}
