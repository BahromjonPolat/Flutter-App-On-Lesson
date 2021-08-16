import 'package:flutter/material.dart';

class EditPage extends StatefulWidget {
  @override
  _EditPageState createState() => _EditPageState();
}

class _EditPageState extends State<EditPage> {
  Icon icon = Icon(
    Icons.messenger,
    color: Colors.green,
  );
  int c = 0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          title: Text("Edit Page"),
        ),
        body: Center(
          child: Container(
            alignment: Alignment.center,
            child: ListView(
              children: [
                getCard(size, 1),
                getCard(size, 2),
                getCard(size, 3),
                getCard(size, 4),
                getCard(size, 5),
                getCard(size, 6),
                getCard(size, 7),
                getCard(size, 8),
                getCard(size, 9),
                getCard(size, 10),
              ],
            ),
          ),
        ));
  }

  Card getCard(Size size, int num) {
    return Card(
      borderOnForeground: true,
      margin: EdgeInsets.all(16.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Container(
              width: size.width * 0.5,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "+998 93 188 1333",
                    textAlign: TextAlign.start,
                  ),
                  Text(
                    "Mobile Phone",
                    textAlign: TextAlign.start,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 24.0,
              child: VerticalDivider(
                color: Colors.green,
              ),
            ),
            Icon(
              Icons.phone,
              color: Colors.green,
            ),
            SizedBox(
              height: 24.0,
              child: VerticalDivider(
                color: Colors.green,
              ),
            ),
            IconButton(
              icon: icon,
              onPressed: () {
                print("Clicked $num");
                setState(() {
                  if (icon.icon == Icons.messenger) {
                    icon = Icon(
                      Icons.person,
                      color: Colors.green,
                    );
                  } else {
                    icon = Icon(
                      Icons.messenger,
                      color: Colors.green,
                    );
                  }
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
