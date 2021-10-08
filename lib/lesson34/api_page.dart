import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:my_flutter_app/lesson34/post_model.dart';

class LessonThirtyFourApiPage extends StatefulWidget {
  @override
  _LessonThirtyFourApiPageState createState() =>
      _LessonThirtyFourApiPageState();
}

class _LessonThirtyFourApiPageState extends State<LessonThirtyFourApiPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _showAppBar(),
      body: _buildBody(),
    );
  }

  AppBar _showAppBar() => AppBar(title: Text("API"));

  _buildBody() => FutureBuilder(
      future: _getPosts(),
      builder: (context, AsyncSnapshot<List<Post>> snap) {
        return snap.hasData
            ? ListView.builder(
            itemCount: snap.data.length,
            itemBuilder: (context, index) {
                Post post = snap.data[index];
                return Card(
                  child: ListTile(
                    title: Text(post.title),
                    subtitle: Text(post.body),
                  ),
                );
              })
            : _showIndicator();
      });

  Future<List<Post>> _getPosts() async {
    Uri url = Uri.parse("https://jsonplaceholder.typicode.com/posts");
    var response = await http.get(url);

    if (response.statusCode == 200) {
      return (jsonDecode(response.body) as List)
          .map((e) => Post.fromJson(e))
          .toList();
    }

    throw Exception("ERROR");
  }

  _showIndicator() => Center(
        child: CupertinoActivityIndicator(radius: 24.0),
      );
}
