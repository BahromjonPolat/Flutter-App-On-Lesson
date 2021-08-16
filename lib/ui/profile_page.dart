import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:my_flutter_app/ui/edit_page.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Profile UI",
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {
              print("Clicked");
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(28.0),
              child: Image(
                width: 120.0,
                height: 120.0,
                image: AssetImage("images/123.jpg"),
              ),
            ),
            Text("Bahromjon Po`lat"),
            Padding(
              padding: const EdgeInsets.fromLTRB(16.0, 32.0, 16.0, 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  OutlinedButton(
                    child: Row(
                      children: [
                        Icon(Icons.edit),
                        SizedBox(
                          width: 12.0,
                        ),
                        Text("Edit"),
                      ],
                    ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (_) {
                        return EditPage();
                      }));
                    },
                  ),
                  SizedBox(
                    height: 24.0,
                    width: 24.0,
                    child: VerticalDivider(
                      color: Colors.green,
                    ),
                  ),
                  OutlinedButton(
                    child: Row(
                      children: [
                        Icon(Icons.attach_money_sharp),
                        SizedBox(
                          width: 12.0,
                        ),
                        Text(
                          "TopUp",
                        ),
                      ],
                    ),
                    onPressed: () {},
                  ),
                  SizedBox(
                    height: 24.0,
                    width: 24.0,
                    child: VerticalDivider(
                      color: Colors.green,
                    ),
                  ),
                  OutlinedButton(
                    child: Row(
                      children: [
                        Icon(Icons.mobile_screen_share_outlined),
                        SizedBox(
                          width: 12.0,
                        ),
                        Text("Invite"),
                      ],
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            Card(
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
                    Icon(
                      Icons.messenger,
                      color: Colors.green,
                    ),
                  ],
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.all(16.0),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: <Widget>[
                    Container(
                      width: size.width * 0.7,
                      child: Column(
                        children: [
                          Text("+998 93 188 1333"),
                          Text("Home"),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 24.0,
                      width: size.width * 0.05,
                      child: VerticalDivider(
                        color: Colors.green,
                      ),
                    ),
                    Icon(
                      Icons.phone,
                      color: Colors.green,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
