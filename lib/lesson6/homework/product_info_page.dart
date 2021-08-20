import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'image_addresses.dart' as imgUrl;

class ProductInfoPage extends StatefulWidget {
  @override
  _ProductInfoPageState createState() => _ProductInfoPageState();
}

class _ProductInfoPageState extends State<ProductInfoPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        centerTitle: true,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        title: Text(
          "REPRESENT",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
              color: Colors.black,
              fontFamily: "poppins"),
        ),
        actions: [
          IconButton(
            icon: Icon(CupertinoIcons.heart),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Terrier\nBlack",
              style: TextStyle(
                fontSize: 42.0,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                fontFamily: "poppins",
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    height: size.height * 0.16,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        _setSize("7", FontWeight.w100),
                        _setSize("8", FontWeight.w200),
                        _setSize("9", FontWeight.w300),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 9,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        width: size.width * 0.6,
                        height: size.height * 0.2,
                        child: Image.network(
                          imgUrl.sneakers1,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "COLOR",
                            style: TextStyle(
                              fontFamily: "poppins",
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          _setColors(Colors.black, Colors.red),
                          _setColors(Colors.orange, Colors.black),
                          _setColors(Colors.black, Colors.white),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              width: size.width * 1.0,
              child: Divider(
                color: Colors.black54,
              ),
            ),
            Text("> 10 <     SIZE",
            style: TextStyle(
              fontWeight: FontWeight.bold
            ),),
            SizedBox(
              width: size.width * 1.0,
              child: Divider(
                color: Colors.black54,
              ),
            ),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    height: size.height * 0.22,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        _setSize("11", FontWeight.w400),
                        _setSize("12", FontWeight.w300),
                        _setSize("13", FontWeight.w200),
                        _setSize("14", FontWeight.w100),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 9,
                  child: Container(
                    padding: EdgeInsets.only(left: 48.0, right: 16),
                    child: Text(
                      """The Terrier. A lightweight, hand-made
sneaker crafted for the everyday weaver.
Featuring a chunky sock insert, breathable membrane with a matte baby cage.


Sitting on a sloping Vibram sale unit,
elements of the brand, DNA include contrasting 3M reflective touches,
mattered piping and hiking laces threaded.            
                      """,
                      style: TextStyle(
                        color: Colors.grey
                      ),
                    ),
                  ),
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text("\$300.00 USD"),
              style: ElevatedButton.styleFrom(
                primary: Colors.black,
                minimumSize: Size(size.width * 1.0, 48.0),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _setSize(String size, weight) => Text(
        size,
        style: TextStyle(
          fontWeight: weight,
        ),
      );

  Widget _setColors(color, color2) => CircleAvatar(
        backgroundColor: color,
        radius: 24.0,
        child: CircleAvatar(
          backgroundColor: color2,
          radius: 12.0,
        ),
      );
}
