import 'package:flutter/material.dart';

class TelegramProfilePage extends StatefulWidget {
  String username;

  TelegramProfilePage({this.username});

  @override
  _TelegramProfilePageState createState() => _TelegramProfilePageState();
}

class _TelegramProfilePageState extends State<TelegramProfilePage> {
  int type = 1;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Profile",
        ),
      ),
      body: Container(
        color: Colors.grey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(),
            setRightMessage("Hello", "15:01"),
            setLeftMessage("msg", "time")
          ],
        ),
      ),
    );
  }

  Widget setRightMessage(String msg, String time) {
    type = 1;
    return Container(
      margin: EdgeInsets.only(bottom: 16.0, left: 64.0, right: 16.0),
      padding: EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        color: Colors.lightGreen,
      ),
      child: Column(

        children: [
          Text(
            msg,
          ),
          Text(
            time,
            style: TextStyle(color: Colors.green),
          ),
        ],
      ),
    );
  }

  Widget setLeftMessage(String msg, String time) {
    type = 0;
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Column(
        children: [
          Text(
            msg,
          ),
          Text(
            time,
            style: TextStyle(color: Colors.green),
          ),
        ],
      ),
    );
  }
}
