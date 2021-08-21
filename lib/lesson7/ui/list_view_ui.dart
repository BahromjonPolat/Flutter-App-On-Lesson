import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_flutter_app/lesson5/shop/image_url.dart';

class ListViewPage extends StatefulWidget {
  @override
  _ListViewPageState createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List View"),
      ),
      body: _showListBuilder(),
    );
  }

  Widget _showListBuilder() {
    return ListView.builder(
        itemCount: 15,
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.yellowAccent,
                radius: 24.0,
              ),
              title: Text(
                "New Design - For 2021",
              ),
              subtitle: Text(
                "new mobile",
              ),
              trailing: Icon(CupertinoIcons.forward),
            ),
          );
        });
  }

  Widget _showList() {
    int rand = Random().nextInt(100);
    print(rand);
    return Card(
      color: Colors.indigo[500],
      elevation: 12.0,
      shadowColor: Colors.indigo,
      margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(12.0),
        ),
      ),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.yellowAccent,
          backgroundImage:
              NetworkImage("https://source.unsplash.com/random/$rand"),
          radius: 24.0,
        ),
        title: Text("New Design - For 2021"),
        subtitle: Text("Interesting Design for Mobile"),
        trailing: Icon(CupertinoIcons.forward),
      ),
    );
  }
}
