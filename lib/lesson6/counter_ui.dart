
import 'package:flutter/material.dart';

class CounterUI extends StatefulWidget {
  @override
  _CounterUIState createState() => _CounterUIState();
}

class _CounterUIState extends State<CounterUI> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter Page"),
      ),
      body: Center(
        child: Container(
          child: RichText(
            text: TextSpan(
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 22.0,
                ),
                children: [
                  TextSpan(
                    text: "Buttonga ",
                  ),
                  TextSpan(
                      text: "$_counter",
                      style: TextStyle(
                        color: (_counter > 0) ? Colors.green : Colors.red,
                        fontWeight: FontWeight.bold,
                        fontSize: 24.0,
                      )),
                  TextSpan(text: " Marta bosildi!"),
                ]),
          ),
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: _onPressedPlus,
            backgroundColor: Colors.green,
            child: Icon(
              Icons.plus_one,
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          FloatingActionButton(
            onPressed: _onPressedMinus,
            backgroundColor: Colors.red,
            child: Icon(
              Icons.exposure_minus_1,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  void _onPressedPlus() {
    setState(() {
      _counter++;
    });
  }

  void _onPressedMinus() {
    setState(() {
      _counter--;
    });
  }
}
