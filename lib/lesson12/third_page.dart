import 'package:flutter/material.dart';

class LessonTwelveThirdPage extends StatefulWidget {
  int _id;
  String _title;

  LessonTwelveThirdPage(this._id, this._title);

  @override
  _LessonTwelveThirdPageState createState() => _LessonTwelveThirdPageState();
}

class _LessonTwelveThirdPageState extends State<LessonTwelveThirdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget._title),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Text("${widget._id.runtimeType}"),
            ElevatedButton(
              child: Text("Go back"),
              onPressed: (){
                Navigator.pop(context);
              },
            ),
          ],
        )
      ),
    );
  }
}
