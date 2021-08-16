import 'package:flutter/material.dart';
import 'package:my_flutter_app/json/user_list.dart';

class ListPage extends StatefulWidget {
  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List page"),
      ),
      body: Container(
          child: ListView(
        children: users
            .map((item) => Card(
                  child: FlatButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar( SnackBar(
                        content: Text(
                          "$item was clicked",
                        ),
                        duration: Duration(
                          seconds: 1,
                        ),
                      ));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        item,
                      ),
                    ),
                  ),
                ))
            .toList(),
      )),
    );
  }
}
