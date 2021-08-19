import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:my_flutter_app/lesson5/shop/second_ui.dart';


class MainShoppingPage extends StatefulWidget {
  @override
  _MainShoppingPageState createState() => _MainShoppingPageState();
}

class _MainShoppingPageState extends State<MainShoppingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
                color: Colors.blue,
                child: Image(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      "https://cdn.pixabay.com/photo/2017/04/05/01/12/traveler-2203666_960_720.jpg"),
                )),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.only(left: 32.0, bottom: 36.0),
              color: Color.fromARGB(255, 208, 208, 179),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Exceptional \nModern Clothing",
                    style: TextStyle(
                      fontSize: 32.0,
                    ),
                  ),
                  SizedBox(
                    height: 24.0,
                    width: 56.0,
                    child: Divider(
                      color: Colors.black,
                      thickness: 2.0,
                    ),
                  ),
                  Text(
                    "Shop for exceptional modern clothings \nfor your everyday life",
                    style: TextStyle(
                      fontSize: 17.0,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (_) {
                          return SecondPage();
                        },
                      ));
                    },
                    child: Text("Go Shopping"),
                    style: ElevatedButton.styleFrom(
                        primary: Colors.black87,
                        padding: EdgeInsets.symmetric(
                            horizontal: 64.0, vertical: 16.0)),
                  ),
                  Row(
                    children: [
                      setIcon(Icon(Icons.circle), 8.0),
                      setIcon(Icon(Icons.radio_button_checked), 16.0),
                      setIcon(Icon(Icons.circle), 8.0),
                      setIcon(Icon(Icons.circle), 8.0),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  setIcon(Icon icon, double size) => Container(
      margin: EdgeInsets.only(right: 8.0),
      child: Icon(
        icon.icon,
        size: size,
      ));
}
