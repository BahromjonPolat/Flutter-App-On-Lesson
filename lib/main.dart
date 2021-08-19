import 'package:flutter/material.dart';
import 'package:my_flutter_app/lesson5/shop/main_ui.dart';
main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.green,
        accentColor: Colors.greenAccent
      ),
      home: MainShoppingPage(),
    );
  }
}
