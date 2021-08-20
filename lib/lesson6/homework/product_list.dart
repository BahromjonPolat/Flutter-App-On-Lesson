import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'image_addresses.dart' as img;

class ProductListPage extends StatefulWidget {
  @override
  _ProductListPageState createState() => _ProductListPageState();
}

class _ProductListPageState extends State<ProductListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black
        ),
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text(
          "FW19",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
            color: Colors.black,
            fontFamily: "poppins"
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(CupertinoIcons.square),
            onPressed: () {},
            color: Colors.grey,
          ),
          IconButton(
            icon: Icon(CupertinoIcons.square_grid_2x2),
            onPressed: () {},
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                _setProduct(img.shirt1, "REPRESENT X LESSONS HOODIE", 215.00),
                _setProduct(img.shirt2, "DINNER SHIRT SPLIT", 175.00),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                _setProduct(img.shirt3, "T-SHIRT WASHED BLACK", 100.00),
                _setProduct(img.shirt4, "LOGO SWEATER RED MARBLE", 200.00),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _setProduct(String imgUrl, String title, double price) => Expanded(
        child: Container(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.26,
                child: Image.network(
                  imgUrl,

                ),
              ),
              SizedBox(
                height: 18.0,
              ),
              Text(
                title,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  fontSize: 22.0,
                  fontFamily: "poppins"
                ),
              ),
              Text(
                "\$$price USD",
              )
            ],
          ),
        ),
      );

}
