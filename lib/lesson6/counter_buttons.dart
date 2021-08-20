import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CounterButtonPage extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<CounterButtonPage> {
  int _leftNumber = 0;
  int _rightNumber = 0;
  int _sum = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter Buttons"),
      ),
      body: Container(
        alignment: Alignment.center,
        height: MediaQuery.of(context).size.height * 1.0,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _setButtons(0),
                Text(
                  "$_sum",
                  style: TextStyle(
                    fontSize: 32.0,
                    fontWeight: FontWeight.bold
                  ),
                ),
                _setButtons(1),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _setButtons(int type) => Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            ElevatedButton.icon(
              onPressed: () {
                setState(() {
                  if (type == 1)
                    _rightNumber++;
                  else
                    _leftNumber++;
                  _sum = _leftNumber + _rightNumber;
                });
              },
              icon: Icon(CupertinoIcons.add),
              label: Text("Add"),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: (type == 1) ? Text("$_rightNumber") : Text("$_leftNumber"),
            ),
            ElevatedButton.icon(
              onPressed: () {
                setState(() {
                  if (type == 1)
                    _rightNumber--;
                  else
                    _leftNumber--;

                  _sum = _leftNumber + _rightNumber;
                });
              },
              icon: Icon(CupertinoIcons.minus),
              label: Text("min"),
            ),
          ],
        ),
      );
}
