import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Profile UI",
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {
              print("Clicked");
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Image(
              width: 64.0,
              height: 64.0,
              image: AssetImage("images/123.jpg"),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                OutlinedButton(
                  child: Row(
                    children: [
                      Icon(Icons.edit),
                      Text("Edit"),
                    ],
                  ),
                  onPressed: () {},
                ),

                SizedBox(

                ),

                OutlinedButton(
                  child: Row(
                    children: [
                      Icon(Icons.edit),
                      Text("Edit"),
                    ],
                  ),
                  onPressed: () {},
                ),

                OutlinedButton(
                  child: Row(
                    children: [
                      Icon(Icons.edit),
                      Text("Edit"),
                    ],
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
