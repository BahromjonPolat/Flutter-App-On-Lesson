import 'package:flutter/material.dart';

class ChessPage extends StatefulWidget {
  @override
  _ChessPageState createState() => _ChessPageState();
}

class _ChessPageState extends State<ChessPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Chess Table",
        ),
      ),
      body: ListView(
        children: <Widget>[
          firstRow(size),
          secondRow(size),
          firstRow(size),
          secondRow(size),
          firstRow(size),
          secondRow(size),
          firstRow(size),
          secondRow(size),
        ],
      ),
    );
  }

  Row firstRow(size) {
    return Row(
      children: <Widget>[
        Container(
          width: size.width * 0.25,
          height: size.width * 0.25,
          color: Colors.black,
        ),
        Container(
          width: size.width * 0.25,
          height: size.width * 0.25,
          color: Colors.white,
        ),
        Container(
          width: size.width * 0.25,
          height: size.width * 0.25,
          color: Colors.black,
        ),
        Container(
          width: size.width * 0.25,
          height: size.width * 0.25,
          color: Colors.white,
        ),
      ],
    );
  }

  Row secondRow(size) {
    return Row(
      children: <Widget>[
        Container(
          width: size.width * 0.25,
          height: size.width * 0.25,
          color: Colors.white,
        ),
        Container(
          width: size.width * 0.25,
          height: size.width * 0.25,
          color: Colors.black,
        ),
        Container(
          width: size.width * 0.25,
          height: size.width * 0.25,
          color: Colors.white,
        ),
        Container(
          width: size.width * 0.25,
          height: size.width * 0.25,
          color: Colors.black,
        ),
      ],
    );
  }
}
