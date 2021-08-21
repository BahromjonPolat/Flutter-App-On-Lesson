import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_flutter_app/json/user_list.dart';
import 'package:my_flutter_app/lesson7/homework/instagram/data/post_list.dart';
import 'package:my_flutter_app/lesson7/homework/instagram/data/user_list.dart';
import 'package:my_flutter_app/lesson7/homework/instagram/model/instagram_post.dart';

import 'model/instagram_user.dart';

class InstagramMainPage extends StatefulWidget {
  @override
  _InstagramMainPageState createState() => _InstagramMainPageState();
}

class _InstagramMainPageState extends State<InstagramMainPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backwardsCompatibility: false,
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Text(
          "Instagram",
          style: TextStyle(
            fontFamily: "lobster",
            fontWeight: FontWeight.bold,
            color: Colors.black,
            fontSize: 24.0,
          ),
        ),
        actions: [
          IconButton(icon: Icon(Icons.send), onPressed: () {}),
        ],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              flex: 1,
              child: getStories(),
            ),
            Expanded(
              flex: 5,
              child: getPosts(),
            ),
            Divider(
              height: 1.0,
              thickness: 1.0,
            ),
            SizedBox(
              height: 8.0,
            ),
            setBottomNavigationIcon(),
          ],
        ),
      ),
    );
  }

  getStories() {

    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: getUsers().length,
        itemBuilder: (context, index) {
          User user = getUsers()[index];
          return Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 6.0, vertical: 6.0),
                child: CircleAvatar(
                  radius: 32.0,
                  backgroundColor: Colors.blueGrey,
                  backgroundImage: AssetImage("images/123.jpg"),
                ),
              ),
              Text(
                (user.username.length > 10)
                    ? user.username.substring(0, 10) + "..."
                    : user.username,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 12.0,
                  color: Colors.black87,
                ),
              ),
            ],
          );
        });
  }

  getPosts() {
    return ListView.builder(
        itemCount: posts.length,
        itemBuilder: (context, index) {
          Post post = posts[index];

          return Column(
            children: [
              ListTile(
                leading: CircleAvatar(
                  radius: 18.0,
                  backgroundColor: Colors.indigo,
                ),
                title: Text(
                  "username",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                trailing: IconButton(
                  icon: Icon(Icons.more_vert),
                  onPressed: () {},
                ),
              ),
              Container(

                child: Image.network(
                  post.imageUrl,
                ),
              ),
              getLikeSection(),
            ],
          );
        });
  }

  Widget getLikeSection() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(CupertinoIcons.heart),
                Icon(CupertinoIcons.chat_bubble),
                Icon(CupertinoIcons.arrowshape_turn_up_right),
              ],
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(
              alignment: Alignment.centerRight,
              child: Icon(CupertinoIcons.bookmark),
            ),
          ),
        ],
      ),
    );
  }

  Widget setBottomNavigationIcon() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        setIcon(CupertinoIcons.home, Colors.black),
        setIcon(CupertinoIcons.search, Colors.black),
        setIcon(CupertinoIcons.plus_app, Colors.black),
        setIcon(CupertinoIcons.heart, Colors.black),
        CircleAvatar(
          backgroundColor: Colors.indigo,
          backgroundImage: AssetImage("images/123.jpg"),
          radius: 16.0,
        )
      ],
    );
  }

  Widget setIcon(icon, color) => Icon(
        icon,
        color: color,
        size: 28.0,
      );
}
