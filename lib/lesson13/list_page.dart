import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LessonThreeTeenListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List Page"),
      ),
      body: _body(),
    );
  }

  Widget _body() => ListView.builder(
      itemCount: 20,
      itemBuilder: (context, index) => ListTile(
            leading: CircleAvatar(
              child: Text("$index"),
            ),
            title: Text("Index: $index"),
            trailing: Icon(CupertinoIcons.forward),
        onTap: () {
              Navigator.pushNamed(context, "details/$index");

        },
          ));
}
