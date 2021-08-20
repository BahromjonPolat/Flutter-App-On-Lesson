import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'image_url.dart' as img;

class SecondPage extends StatefulWidget {
  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  setText("Milan", 22.0),
                  setDivider(220.0),
                  setText("Search", 18.0),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  setCircleAvatar(img.bag1, "Gucci"),
                  setCircleAvatar(img.bag2, "Nike"),
                  setCircleAvatar(img.bag3, "Adidas"),
                  setCircleAvatar(img.bag4, "Chloe"),
                  setCircleAvatar(img.bag5, "Prada"),
                ],
              ),
              Container(
                width: size.width * 1.0,
                height: size.width * 1.0,
                child: Image.network(
                  img.bagSecond,
                  fit: BoxFit.cover,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  setDivider(64.0),
                  Column(
                    children: [
                      setText("Modern", 36.0),
                      setText("Essentials", 36.0),
                    ],
                  ),
                  setDivider(64.0)
                ],
              ),
              setText("Discover new Style", 16.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  setCircleIcon(Icon(Icons.circle), 8.0),
                  setCircleIcon(Icon(Icons.radio_button_checked), 16.0),
                  setCircleIcon(Icon(Icons.circle), 8.0),
                  setCircleIcon(Icon(Icons.circle), 8.0),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(right: 3.0),
                      color: Colors.black54,
                      height: 24.0,
                      child: Image.network(
                        img.bag4,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(left: 3.0),
                      color: Colors.red,
                      height: 24.0,
                      child: Image.network(
                        img.bag1,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  setBottomIcon(Icon(CupertinoIcons.home)),
                  setBottomIcon(Icon(CupertinoIcons.search)),
                  setBottomIcon(Icon(CupertinoIcons.bag)),
                  setBottomIcon(Icon(CupertinoIcons.heart)),
                  setBottomIcon(Icon(CupertinoIcons.person)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget setText(String text, double size) => Text(
        text,
        style: TextStyle(
          fontSize: size,
          fontWeight: (text.contains("Modern") || text.contains("Essentials"))
              ? FontWeight.bold
              : FontWeight.normal,
        ),
      );

  Widget setCircleAvatar(String imageUrl, String text) => Column(
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(imageUrl),
            radius: 28.0,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Text(
              text,
            ),
          ),
        ],
      );

  Widget setBottomIcon(Icon icon) => Container(
        child: Icon(
          icon.icon,
          size: 32.0,
        ),
      );

  Widget setDivider(double size) => SizedBox(
        width: size,
        child: Divider(
          color: Colors.black,
          thickness: 1.5,
        ),
      );

  Widget setCircleIcon(Icon icon, double size) => Container(
        margin: EdgeInsets.only(right: 8.0),
        child: Icon(
          icon.icon,
          size: size,
        ),
      );
}
