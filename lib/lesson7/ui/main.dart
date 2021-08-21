import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RandomImagePage extends StatefulWidget {
  @override
  _RandomImagePageState createState() => _RandomImagePageState();
}

class _RandomImagePageState extends State<RandomImagePage> {
  String img = "https://source.unsplash.com/random/";
  List<String> imageUrls = List.generate(100, (index) => "https://source.unsplash.com/random/$index");

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
                setState(() {
                  img = imageUrls[Random().nextInt(100)];
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
