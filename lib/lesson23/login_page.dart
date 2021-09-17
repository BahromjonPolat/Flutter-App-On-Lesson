import 'package:flutter/material.dart';
import 'package:my_flutter_app/lesson23/game_page.dart';

class LessonTwentyThreeLoginPage extends StatefulWidget {
  @override
  _LessonTwentyThreeLoginPageState createState() => _LessonTwentyThreeLoginPageState();
}

class _LessonTwentyThreeLoginPageState extends State<LessonTwentyThreeLoginPage> {
  var _formKey = GlobalKey<FormState>();

  Color _color;

  TextEditingController _usernameController = TextEditingController();

  List<DropdownMenuItem<Color>> _listOfDropdownc = [
    DropdownMenuItem(
      child: Row(
        children: [
          Icon(Icons.circle, color: Colors.red),
          SizedBox(
            width: 20.0,
          ),
          Text("Qizil Rang"),
        ],
      ),
      value: Colors.red,
    ),
    DropdownMenuItem(
      child: Row(
        children: [
          Icon(Icons.circle, color: Colors.green),
          SizedBox(
            width: 20.0,
          ),
          Text("Yashil Rang"),
        ],
      ),
      value: Colors.green,
    ),
    DropdownMenuItem(
      child: Row(
        children: [
          Icon(Icons.circle, color: Colors.blue),
          SizedBox(
            width: 20.0,
          ),
          Text("Moviy Rang"),
        ],
      ),
      value: Colors.blue,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          "Login Page",
          style: TextStyle(
            color: Colors.indigo,
            fontSize: 24.0,
          ),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: Column(
                children: _formListElementlar(),
              ),
            ),
          ),
        ),
      ),
    );
  }

  _formListElementlar() {
    return [
      CircleAvatar(
        radius: 100.0,
        backgroundImage: NetworkImage(
            "https://images-platform.99static.com/ToOcJbuDzoa8sqctL1QMGO089kA=/200x220:1800x1820/500x500/top/smart/99designs-contests-attachments/95/95660/attachment_95660693"),
      ),
      SizedBox(
        height: 80.0,
      ),
      TextFormField(
        controller: _usernameController,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          hintText: "Username Shu Yerda kiriting...",
          labelText: "Username",
        ),
        validator: (String v) {
          if (v.length < 4) {
            return "Username Kam Kirtildi !!!";
          }
        },
      ),
      SizedBox(height: 30.0),
      DropdownButtonHideUnderline(
        child: DropdownButton<Color>(
          value: _color,
          hint: Text("Rang Tanlang"),
          items: _listOfDropdownc,
          onChanged: (v) {
            setState(() {
              _color = v;
            });
          },
        ),
      ),
      SizedBox(height: 30.0),
      ElevatedButton(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.play_arrow),
            Text("Start Game"),
          ],
        ),
        onPressed: () {
          if (_formKey.currentState.validate() && _color != null) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => HomePage(
                  color: _color,
                  username: _usernameController.text,
                ),
              ),
            );
          } else {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(
                  "Hamma Fieldni Tekshiring Iltimos !",
                ),
              ),
            );
          }
        },
      ),
    ];
  }
}
