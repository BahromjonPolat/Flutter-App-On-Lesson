import 'package:flutter/material.dart';

class Controller extends StatefulWidget {
  @override
  _ControllerState createState() => _ControllerState();
}

class _ControllerState extends State<Controller> {
  var _formKey = GlobalKey<FormState>();
  var _usernameController = TextEditingController();
  var _emailController = TextEditingController();
  var _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(
          "Log in form",
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Form(
              key: _formKey,
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    // For EMAIL
                    TextFormField(
                      // validator: (text) {
                      //   if (RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(_emailController.text)) {
                      //     return "Email xato";
                      //   }
                      // },
                      controller: _emailController,
                      onTap: () {},
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Email",
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    // FOR USERNAME
                    TextFormField(
                      validator: (text) {
                        if (text.length < 4) {
                          return "4 ta belgidan kam bo'lmasin";
                        }
                      },
                      controller: _usernameController,
                      onTap: () {},
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Username",
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    // FOR PASSWORD
                    TextFormField(
                      validator: (text) {
                        if (text.length < 4) {
                          return "4 ta belgidan kam bo'lmasin";
                        }
                      },
                      obscureText: true,
                      controller: _passwordController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Password",
                        suffix: IconButton(
                          icon: Icon(
                            Icons.refresh_sharp,
                            color: Colors.pink[100],
                          ),
                          onPressed: () {
                            _passwordController.clear();
                          },
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.orange[100],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Save",
                          ),
                          SizedBox(
                            width: 20.0,
                          ),
                          Icon(
                            Icons.save,
                          ),
                        ],
                      ),
                      onPressed: buttonSave,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.cyan[100],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Clear",
                          ),
                          SizedBox(
                            width: 20.0,
                          ),
                          Icon(
                            Icons.refresh,
                          ),
                        ],
                      ),
                      onPressed: buttonClear,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              color: Colors.teal[100],
              height: 200.0,
              child: Center(
                child: Text(
                  "${_usernameController.text}\n${_emailController.text}\n${_passwordController.text}",
                  style: TextStyle(fontSize: 30.0, color: Colors.black),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  buttonSave() {
    if (_formKey.currentState.validate()) {
      setState(() {});
      // Navigator.pushAndRemoveUntil(
      //     context,
      //     MaterialPageRoute(
      //         builder: (context) =>
      //             WelcomePage(username: _usernameController.text)),
      //     (route) => false);

    }
  }

  buttonClear() {
    _formKey.currentState.reset();
  }
}
