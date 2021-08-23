import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class LessonEight extends StatefulWidget {
  @override
  _LessonEightState createState() => _LessonEightState();
}

class _LessonEightState extends State<LessonEight> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Lesson 8",
        ),
      ),
      body: _showToast(),
    );
  }

  Widget _bodyPage() => _getListSeparated();

  Widget _getListSeparated() => ListView.separated(
      itemBuilder: (context, index) {

        return Container(
          alignment: Alignment.center,
          height: 40.0,
          child: Text(
            "Item: $index",
          ),
        );
      },
      separatorBuilder: (context, index) {
        return ((index + 1) % 5 == 0)
            ? Container(
                height: 60,
                color: Colors.orange,
                alignment: Alignment.center,
                child: Text(
                  "REKLAMA",
                ),
              )
            : Divider();
      },
      itemCount: 50);

  List<String> names = List.generate(100, (index) => "Name: $index");

  _getListView() => ListView(
        children: names.map((index) {
          print("Index: $index");
          return Container(
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Text(
              index,
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          );
        }).toList(),
      );

  Widget _showToast() => ListView.builder(
      itemCount: 25,
      itemBuilder: (context, index) {
        print("Index: $index");
        return Dismissible(
          key: Key("$index"),
          child: Card(
            child: ListTile(
              title: Text(
                "Title $index",
              ),
              onTap: () {
                SnackBar sb = SnackBar(
                  elevation: 12.0,
                  backgroundColor: Colors.green,
                  duration: Duration(seconds: 5),
                  content: Container(
                    child: Row(
                      children: [
                        Icon(
                          CupertinoIcons.pencil,
                          color: Colors.white,
                        ),
                        Text("SnackBar"),
                      ],
                    ),
                  ),
                  action: SnackBarAction(
                    textColor: Colors.white,
                    onPressed: () {
                      Fluttertoast.showToast(msg: "Toast $index");
                    },
                    label: "Toast",
                  ),
                );
                ScaffoldMessenger.of(context).showSnackBar(sb);
              },
            ),
          ),
          onDismissed: (direction) {
            if (direction == DismissDirection.startToEnd) {
              Fluttertoast.showToast(msg: "$index element was deleted");
            }
          },
        );
      });
}
