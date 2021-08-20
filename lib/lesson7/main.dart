import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RandomImagePage extends StatefulWidget {
  @override
  _RandomImagePageState createState() => _RandomImagePageState();
}

class _RandomImagePageState extends State<RandomImagePage> {
  String img1 = "https://source.unsplash.com/random/";
  String img2 = "https://source.unsplash.com/random/1280x800";
  String img3 = "https://source.unsplash.com/random/1080";
  String img = " ";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Lesson 7",
        ),
        actions: [
          IconButton(
            icon: Icon(CupertinoIcons.search),
            onPressed: () {},
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            FadeInImage(
              height: 360.0,
              width: 360.0,
              placeholder: AssetImage("images/bee.png"),
              image: NetworkImage(img),
            ),
            ElevatedButton(
              onPressed: () {
                int random = Random().nextInt(100);
                setState(() {
                  if (img != img1) img = img1 + random.toString();
                });
              },
              child: Text(
                "Refresh",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
