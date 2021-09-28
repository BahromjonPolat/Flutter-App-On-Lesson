import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_flutter_app/lesson29/page_view.dart';

class LessonTwentyNineMainPage extends StatefulWidget {
  @override
  _LessonTwentyNineMainPageState createState() =>
      _LessonTwentyNineMainPageState();
}

class _LessonTwentyNineMainPageState extends State<LessonTwentyNineMainPage> {
  Color _deepOrange = Colors.deepOrange;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _getBody(),
    );
  }

  _getBody() => Container(
        child: ListView.builder(itemBuilder: (context, index) {
          return ExpansionTile(
            leading: Icon(CupertinoIcons.person),
            title: Text("Contact $index"),
            children: [
              ListTile(
                title: Text("Contact $index"),
                leading: Icon(Icons.person),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) => LessonTwentyNinePageView()));
                },
              ),
              ListTile(
                title: Text("+998 93 188 1333"),
                leading: Icon(Icons.contact_mail),
              ),
            ],
          );
        }),
      );
}
