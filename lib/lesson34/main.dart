import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:my_flutter_app/lesson34/api_page.dart';
import 'package:my_flutter_app/lesson34/user_model.dart';

class LessonThirtyFourMain extends StatefulWidget {
  @override
  State<LessonThirtyFourMain> createState() => _LessonThirtyFourMainState();
}

class _LessonThirtyFourMainState extends State<LessonThirtyFourMain> {
  @override
  void initState() {
    super.initState();
    _getUserList().then((value) => debugPrint(value.toString()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _getAppBar(),
      body: _buildBody(),
      floatingActionButton: _getFloatingActionButton(),
    );
  }

  AppBar _getAppBar() => AppBar(
        title: Text("Lesson 34"),
      );

  _buildBody() => FutureBuilder(
      future: _getUserList(),
      builder: (context, AsyncSnapshot<List<User>> snap) {
        return ListView.builder(
            itemCount: snap.data.length,
            itemBuilder: (context, index) {
              User user = snap.data[index];
              return Card(
                child: ListTile(
                  title: Text(user.name),
                  subtitle: Text(user.username),
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(user.imageUrl),
                  ),
                ),
              );
            });
      });

  Future<List<User>> _getUserList() async {
    var users =
        await DefaultAssetBundle.of(context).loadString("data/users.json");
    List<User> userList =
        (jsonDecode(users) as List).map((e) => User.fromJSON(e)).toList();
    return userList;
  }

  FloatingActionButton _getFloatingActionButton() => FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => LessonThirtyFourApiPage(),
              ));
        },
      );
}
