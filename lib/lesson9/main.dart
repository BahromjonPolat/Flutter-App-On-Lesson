import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/rendering.dart';

// AlertDialog
// GridView.count
// GridView
// Navigator.pop

class LessonNineMainPage extends StatefulWidget {
  @override
  _LessonNineMainPageState createState() => _LessonNineMainPageState();
}

class _LessonNineMainPageState extends State<LessonNineMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Lesson 9",
        ),
      ),
      body: _bodyPage(),
    );
  }

  _bodyPage() {
    return Center(
      child: _gridViewCount(),
    );
  }

  _setList() => ListView.builder(
      itemCount: 15,
      itemBuilder: (ctx, index) {
        return Card(
          child: ListTile(
              title: Text(
                "Index: $index",
              ),
              onTap: () {
                _showAlertDialog(ctx, index);
              }),
        );
      });

  _showAlertDialog(context, index) {
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text("This is element $index"),
            content: Container(
              child: Image.asset("images/karate.png"),
            ),
            actions: [
              ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.red),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("Cancel")),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.green),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("OK")),
            ],
          );
        });
  }

  _gridViewCount() => GridView.count(
        crossAxisCount: 2,
        children: List.generate(
          25,
          (index) => Container(
            width: MediaQuery.of(context).size.width * 1.0,
            decoration: BoxDecoration(
                color: Colors.grey,
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        "https://source.unsplash.com/random/$index")),
                gradient: LinearGradient(
                  colors: [
                    Colors.pink[900],
                    Colors.pink[800],
                    Colors.pink[700],
                    Colors.pink[600],
                    Colors.pink[500],
                    Colors.pink[400],
                  ],
                  begin: Alignment.centerLeft,
                  end: Alignment.bottomCenter,
                ),
                borderRadius: BorderRadius.circular(32.0),
                border: Border.all(color: Colors.green, width: 2.0)),
            alignment: Alignment.bottomCenter,
            margin: EdgeInsets.all(5.0),
            child: AnimatedTextKit(

              displayFullTextOnTap: true,
              onTap: () {},
              animatedTexts: [
                ColorizeAnimatedText(
                  "Index: $index",
                  colors: [
                    Colors.red,
                    Colors.white,
                    Colors.pink,
                  ],
                  textStyle: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    backgroundColor: Colors.black26,
                  ),
                ),
              ],
            ),
          ),
        ),
      );

  _gridViewBuilder() => GridView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 25,
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (context, index) {
        return Container(
          margin: EdgeInsets.all(5.0),
          padding: EdgeInsets.all(16.0),
          color: Colors.pink,
          child: GridTile(
            child: Container(),
            header: Text("Header"),
            footer: Text("Footer"),
          ),
        );
      });
}
