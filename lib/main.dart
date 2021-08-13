import 'package:flutter/material.dart';
import 'package:my_flutter_app/ui/body_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: Colors.deepOrange,
          accentColor: Colors.orangeAccent,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("My Flutter App"),
          elevation: 12.0,
          actions: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Icon(Icons.search),
            ),
          ],
        ),
        body: BodyPage(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {

          },
        ),
      ),

    );
  }
}
