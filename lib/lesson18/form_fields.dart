import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:my_flutter_app/lesson18/profile_page.dart';
import 'package:my_flutter_app/lesson18/text.dart';

class LessonEightTeenLoginFormPage extends StatefulWidget {
  @override
  _LessonEightTeenLoginFormPageState createState() =>
      _LessonEightTeenLoginFormPageState();
}

class _LessonEightTeenLoginFormPageState
    extends State<LessonEightTeenLoginFormPage> {
  Size _size;
  var _formKey = GlobalKey<FormState>();
  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  FocusNode _textFieldFocus = FocusNode();
  Color _inputDecoColor = Colors.white;

  String _email = "bahromjon.ergashboyev@gmail.com";
  String _password = "123456";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _textFieldFocus.addListener(() {
      if (_textFieldFocus.hasFocus) {
        setState(() {
          _inputDecoColor = Colors.orange;
        });
      } else {
        setState(() {
          _inputDecoColor = Colors.white;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    _size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: _getAppBar(),
      body: _getBody(),
    );
  }

  AppBar _getAppBar() => AppBar(
        title: Text("Login Form Field"),
      );

  Container _getBody() => Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              _getForm(),
              // _setData(),
            ],
          ),
        ),
      );

  ///
  Form _getForm() => Form(
        key: _formKey,
        child: Container(
          height: _size.height * 0.4,
          margin: EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextFormField(
                controller: _nameController,
                decoration: _getInputDecoration("Name"),
                keyboardType: TextInputType.name,
                validator: (value) {
                  if (value.length < 3) return "3 tadan kam bo`lmasin";
                },
              ),
              TextFormField(
                controller: _emailController,
                decoration: _getInputDecoration("Email"),
                keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  if (!RegExp(
                          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                      .hasMatch(_emailController.text))
                    return "Please, Enter a valid email";
                },
                // validator: _validator,
              ),
              TextFormField(
                controller: _passwordController,
                decoration: _getInputDecoration("Password"),
                keyboardType: TextInputType.visiblePassword,
                // validator: _validator,
                obscureText: true,
                validator: (value) {
                  if (value.length < 3) return "3 tadan kam bo`lmasin";
                },
              ),
              _getButtonField(),
            ],
          ),
        ),
      );

  InputDecoration _getInputDecoration(String hint) => InputDecoration(
      filled: true,
      hintText: hint,
      fillColor: _inputDecoColor,
      border: OutlineInputBorder(
          borderSide: BorderSide(
            width: 0.0,
            color: Colors.white,
          ),
          borderRadius: BorderRadius.circular(16.0)));

  Row _getButtonField() => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _getButton("show", Icon(Icons.show_chart), "Show"),
          _getButton("clear", Icon(Icons.delete), "Delete"),
        ],
      );

  ElevatedButton _getButton(String type, Icon icon, String label) =>
      ElevatedButton.icon(

        onPressed: (type =="show") ? _onShowButtonPressed : _onDeletePressed,
        icon: icon,
        label: Text(label),
      );

  Container _setData() => Container(
        alignment: Alignment.center,
        color: Colors.orange,
        width: _size.width,
        height: _size.height * 0.3,
        child: Text(
            "${_nameController.text}\n${_emailController.text}\n${_passwordController.text}"),
      );

  void _onShowButtonPressed() {
    if (_formKey.currentState.validate()) {
      if (_emailController.text == _email &&
          _passwordController.text == _password) {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (ctx) =>
                    LessonEightTeenProfilePage(_nameController.text)));
      } else {
        Fluttertoast.showToast(msg: "Wrong Email or Password");
      }
    }
  }

  void _onDeletePressed() {
    Navigator.push(context, MaterialPageRoute(builder: (builder)=> Controller()));
  }

  SizedBox _setVerticalSize(double size) => SizedBox(
        height: size,
      );


}
