import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_flutter_app/lesson36/cat_model.dart';
import 'package:http/http.dart' as http;

class LessonThirtySixMainPage extends StatefulWidget {
  @override
  _LessonThirtySixMainPageState createState() =>
      _LessonThirtySixMainPageState();
}

class _LessonThirtySixMainPageState extends State<LessonThirtySixMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _getAppBar(),
      body: _getBody(),
    );
  }

  AppBar _getAppBar() => AppBar(
        title: Text("Lesson 36"),
      );

  _getBody() => FutureBuilder(
      future: _getPostApi(),
      builder: (context, AsyncSnapshot<List<Cat>> snap) {
        return snap.hasData
            ? ListView.builder(
                itemCount: snap.data.length,
                itemBuilder: (context, index) {
                  Cat cat = snap.data[index];
                  return ExpansionTile(
                    title: Text(cat.statusCode.toString()),
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16.0,
                          vertical: 12,
                        ),
                        child: Column(
                          children: [
                            Image.network(cat.imageUrl),
                            Text(cat.description),
                          ],
                        ),
                      ),
                    ],
                  );
                })
            : Center(
                child: CupertinoActivityIndicator(radius: 25.0),
              );
      });

  Future<List<Cat>> _getPostApi() async {
    Uri url = Uri.parse("https://hwasampleapi.firebaseio.com/http.json");
    var postList = await http.get(url);
    return (jsonDecode(postList.body) as List)
        .map((e) => Cat.fromJson(e))
        .toList();
  }
}
