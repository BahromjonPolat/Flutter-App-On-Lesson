import 'package:flutter/material.dart';
import 'package:my_flutter_app/lesson23/quiz_model.dart';

class HomePage extends StatefulWidget {
  Color color;
  String username;

  HomePage({this.color, this.username});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;
  int togri = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Username: ${widget.username}",
          style: TextStyle(color: widget.color, fontSize: 22.0),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              Questions.questions[index].toString(),
              style: TextStyle(
                color: Colors.black,
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30.0),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10.0),
              height: 400.0,
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 10.0,
                  crossAxisSpacing: 10.0,
                ),
                itemBuilder: (context, i) {
                  return ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: widget.color,
                    ),
                    child: Text(
                      Questions.answers[index][i],
                      style: TextStyle(fontSize: 17.0),
                      textAlign: TextAlign.center,
                    ),
                    onPressed: () {
                      if (i == Questions.answers[index][3]) {
                        togri += 1;
                        showDialog(
                          context: context,
                          builder: (context) {
                            return Container(
                              height: 250.0,
                              width: 300.0,
                              child: AlertDialog(
                                title: Column(
                                  children: [
                                    Icon(Icons.check),
                                    SizedBox(height: 40.0),
                                    Text(
                                      "Tabriklaymiz Togri Javob !!",
                                      style: TextStyle(
                                        color: Colors.green,
                                        fontSize: 24.0,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        );
                      } else {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return Container(
                              height: 250.0,
                              width: 300.0,
                              child: AlertDialog(
                                title: Column(
                                  children: [
                                    Icon(Icons.sms_failed),
                                    SizedBox(height: 40.0),
                                    Text(
                                      "Afsuski Notogri Javob !!",
                                      style: TextStyle(
                                        color: Colors.red,
                                        fontSize: 24.0,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        );
                      }
                      if (index != 4) {
                        setState(() {
                          index += 1;
                        });
                      } else {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: Text(
                                "Togri: ${togri}. Notogri: ${5 - togri}",
                                style: TextStyle(
                                  color: Colors.red,
                                  fontSize: 24.0,
                                ),
                              ),
                            );
                          },
                        );
                        index = 0;
                        setState(() {});
                      }
                    },
                  );
                },
                itemCount: 3,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
