import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:my_flutter_app/lesson5/shop/image_url.dart' as imgUrl;

class LessonSix extends StatefulWidget {
  @override
  _LessonSixState createState() => _LessonSixState();
}

class _LessonSixState extends State<LessonSix> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lesson 6"),
      ),
      body: Column(
        children: [
          setRow(),
          ElevatedButton(
            onPressed: () {},
            child: Text("Elevated Button"),
            style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16.0),
                ),
                minimumSize: Size(120.0, 32.0)),
          ),
          ElevatedButton.icon(
            icon: Icon(CupertinoIcons.add_circled),
            label: Text("Elevated Button icon"),
            style: ElevatedButton.styleFrom(
              primary: Colors.green,
              elevation: 15.0,
              shadowColor: Colors.indigo,
            ),
            onPressed: () {
              Fluttertoast.showToast(
                msg: "Clicked",
                toastLength: Toast.LENGTH_SHORT,

              );
            },
          ),
          TextButton(
            onPressed: () {},
            child: Column(
              children: [
                Icon(CupertinoIcons.scope),
                Text("Hello"),
              ],
            ),
          ),
          OutlinedButton(
            onPressed: () {},
            child: Text("Outlined Button"),
          ),
        ],
      ),
    );
  }

  Widget setRow() => Container(
        height: 120.0,
        margin: EdgeInsets.all(16.0),
        child: Row(
          children: [
            Expanded(
              child: Container(
                child: Image.network(
                  imgUrl.bag4,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Expanded(
              child: FlutterLogo(),
            ),
            Expanded(child: Placeholder()),
          ],
        ),
      );
}
