import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class SecondPage extends StatefulWidget {
  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  String imgUrl =
      "https://cdn.pixabay.com/photo/2017/04/05/01/12/traveler-2203666_960_720.jpg";

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
                  setCircleAvatar(
                      "https://cdn.pixabay.com/photo/2014/03/29/09/17/cat-300572__340.jpg",
                      "Mallavoy"),
                  setCircleAvatar(
                      "https://cdn.pixabay.com/photo/2015/05/22/05/52/cat-778315__340.jpg",
                      "Qoravoy"),
                  setCircleAvatar(
                      "https://cdn.pixabay.com/photo/2021/07/13/11/34/cat-6463284__340.jpg",
                      "Baroqvoy"),
                  setCircleAvatar(
                      "https://cdn.pixabay.com/photo/2020/10/05/10/51/cat-5628953__340.jpg",
                      "Momiqvoy"),
                  setCircleAvatar(
                      "https://cdn.pixabay.com/photo/2016/03/28/10/05/kitten-1285341__340.jpg",
                      "Oppoqvoy"),
                ],
              ),
              Container(
                width: size.width * 1.0,
                height: size.width * 1.0,
                child: Image.network(
                  "https://cdn.pixabay.com/photo/2017/04/05/01/12/traveler-2203666_960_720.jpg",
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
                        imgUrl,
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
                        imgUrl,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  setBottomIcon(Icon(Icons.home_outlined)),
                  setBottomIcon(Icon(Icons.search)),
                  setBottomIcon(Icon(Icons.shopping_bag_outlined)),
                  setBottomIcon(Icon(Icons.favorite_border)),
                  setBottomIcon(Icon(Icons.person_outline_outlined)),
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
      ));
}
