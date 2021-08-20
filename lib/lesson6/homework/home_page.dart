import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'image_addresses.dart' as img;
import 'package:my_flutter_app/lesson6/homework/product_info_page.dart';
import 'package:my_flutter_app/lesson6/homework/product_list.dart';

class ShopHomePage extends StatefulWidget {
  @override
  _ShopHomePageState createState() => _ShopHomePageState();
}

class _ShopHomePageState extends State<ShopHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            CupertinoIcons.line_horizontal_3,
            color: Colors.black,
          ),
        ),
        title: Text(
          "REPRESENT",
          style: TextStyle(
              color: Colors.black,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
              fontFamily: "poppins"),
        ),
        actions: [
          IconButton(
            icon: Icon(
              CupertinoIcons.search,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          Row(),
          Expanded(
            flex: 4,
            child: Container(
              width: MediaQuery.of(context).size.width * 1.0,
              color: Colors.green,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_) {
                    return ProductListPage();
                  }));
                },
                child: Text(""),
              ),
              foregroundDecoration: BoxDecoration(
                  image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(img.mainImg),
              )),
            ),
          ),
          SizedBox(
            height: 16.0,
          ),
          Expanded(
            flex: 3,
            child: Container(
              width: MediaQuery.of(context).size.width * 1.0,
              color: Colors.green,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_) {
                    return ProductInfoPage();
                  }));
                },
                child: Text(""),
              ),
              foregroundDecoration: BoxDecoration(
                  image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(img.mainImg2),
              )),
            ),
          ),
        ],
      ),
    );
  }
}
