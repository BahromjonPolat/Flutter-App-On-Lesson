import 'dart:convert';

import 'package:flutter/material.dart';

class LessonThirtyThreeMainPage extends StatefulWidget {
  @override
  _LessonThirtyThreeMainPageState createState() =>
      _LessonThirtyThreeMainPageState();
}

class _LessonThirtyThreeMainPageState extends State<LessonThirtyThreeMainPage> {
  bool _isLoading = true;
  var _users;

  @override
  void initState() {
    super.initState();
    _getData().then((value) => _users = value);
  }

  @override
  Widget build(BuildContext context) {
    debugPrint("Build: " + _users.toString());
    return Scaffold(
      appBar: _getAppBar(),
      floatingActionButton: _refresh(),
      body: _getUserListFutureBuilder(),
    );
  }

  Future<List> _getData() async {
    var json =
        await DefaultAssetBundle.of(context).loadString("data/users.json");

    return jsonDecode(json.toString());
  }

  FutureBuilder _getUserListFutureBuilder() => FutureBuilder(
      future: _getData(),
      builder: (context, snap) {
        return ListView.builder(
            itemCount: snap.data.length,
            itemBuilder: (context, index) {
              Map user = snap.data[index];
              return Card(
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(user['image_url']),
                    backgroundColor: Color(int.parse(user['color'])),
                  ),
                  title: Text(user['name']),
                  subtitle: Text(user["address"]['region']),
                  onTap: () {},
                ),
              );
            });
      });

  ListView _getUserList() => ListView.builder(
      itemCount: _users.length,
      itemBuilder: (context, index) {
        Map user = _users[index];
        return Card(
          child: ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(user['image_url']),
              backgroundColor: Color(int.parse(user['color'])),
            ),
            title: Text(user['name']),
            subtitle: Text(user["address"]['region']),
            onTap: () {},
          ),
        );
      });

  Center _showRefreshIndicator() => Center(
        child: CircularProgressIndicator(),
      );

  AppBar _getAppBar() => AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text("JSON"),
      );

  FloatingActionButton _refresh() => FloatingActionButton(
        backgroundColor: Colors.deepOrange,
        onPressed: () {
          setState(() {
            _isLoading = false;
          });
        },
        child: Icon(Icons.refresh, color: Colors.white),
      );
}
