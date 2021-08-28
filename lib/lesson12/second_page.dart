import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {

  int _id;
  String _title;
  SecondPage(this._id, this._title);

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
       Navigator.pop(context, "This is a Will pop scope");
       return Future.value(true);
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            widget._title,
          ),
        ),

        body: Center(
          child: Text(
            "ID: ${widget._id}"
          ),
        ),

      ),
    );

  }
}
