import 'package:flutter/material.dart';
import 'package:my_flutter_app/lesson22/mark.dart';
import 'package:uuid/uuid.dart';
class LessonTwentyTwoMainPage extends StatefulWidget {
  @override
  _LessonTwentyTwoMainPageState createState() =>
      _LessonTwentyTwoMainPageState();
}

class _LessonTwentyTwoMainPageState extends State<LessonTwentyTwoMainPage> {
  int _baho = 0;
  TextEditingController _fanController = TextEditingController();
  GlobalKey _formKey = GlobalKey<FormState>();
  List<Widget> _markList = [];
  List<String> _strings = [];
  List<Mark> _markListWithId = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Baholarni Hisoblash",
          style: TextStyle(color: Colors.indigo),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          margin: EdgeInsets.all(10.0),
          child: Column(
            children: [
              _dropDownWidgetim(),
              SizedBox(height: 20.0),
              _textFormFieldWidgetim(),
              SizedBox(height: 20.0),
              _buttonWidgetim(),
              SizedBox(height: 20.0),
              // _baholarListim(context),
              _getList(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _baholarListim(BuildContext ctx) {
    return Expanded(
      child: ListView.builder(
        itemBuilder: (ctx, index) {
          return Dismissible(
            child: _markList[index],
            key: Key(_fanController.text),
            onDismissed: (direction) {
              setState(() {
                _markList.removeAt(index);
              });
            },
          );
        },
        itemCount: _markList.length,
      ),
    );
  }

  Widget _dropDownWidgetim() {
    return Container(
      padding: EdgeInsets.only(left: 100.0, right: 100.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.orange),
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<int>(
          isExpanded: true,
          itemHeight: 70.0,
          style: TextStyle(color: Colors.orange, fontSize: 22.0),
          value: _baho,
          items: [
            DropdownMenuItem(
              value: 100,
              child: Text(
                "100",
              ),
              onTap: () {
                setState(() {
                  _baho = 100;
                });
              },
            ),
            DropdownMenuItem(
              value: 80,
              child: Text("80"),
              onTap: () {
                setState(() {
                  _baho = 80;
                });
              },
            ),
            DropdownMenuItem(
              value: 60,
              child: Text("60"),
              onTap: () {
                setState(() {
                  _baho = 60;
                });
              },
            ),
            DropdownMenuItem(
              value: 0,
              child: Text("0"),
              onTap: () {
                setState(() {
                  _baho = 0;
                });
              },
            ),
          ],
          onChanged: (v) {
            setState(() {
              _baho = v;
            });
          },
        ),
      ),
    );
  }

  Widget _textFormFieldWidgetim() {
    return TextFormField(
      key: _formKey,
      controller: _fanController,
      decoration: InputDecoration(
        labelStyle: TextStyle(color: Colors.orange),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.orange),
          borderRadius: BorderRadius.circular(20.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.orange),
          borderRadius: BorderRadius.circular(20.0),
        ),
        border: OutlineInputBorder(),
        hintText: "Fan Nomini Kiriting....",
        labelText: "Fan Nomi",
      ),
      validator: (v) {
        if (v.length < 3) {
          return "Belgilr Kam Kiritildi !!!";
        }
      },
    );
  }

  Widget _buttonWidgetim() {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: Colors.orange,
        fixedSize: Size(120, 40),
      ),
      onPressed: () {
        var uuid = Uuid();
        print(uuid.v4());
        setState(() {
          _markListWithId.add(Mark(uuid.v4(), _fanController.text, _baho));
        });
      },
      child: Text("Baho Qo'sh"),
    );
  }

  _getList() => Expanded(
        child: ListView.builder(
          itemCount: _markListWithId.length,
          itemBuilder: (context, index) {
            final item = _markListWithId[index];
            return Dismissible(
              // Each Dismissible must contain a Key. Keys allow Flutter to
              // uniquely identify widgets.
              key: Key(item.id),
              // Provide a function that tells the app
              // what to do after an item has been swiped away.
              onDismissed: (direction) {
                // Remove the item from the data source.
                print('_LessonTwentyTwoMainPageState._getList $direction');
                setState(() {
                  _markListWithId.removeAt(index);
                });

                // Then show a snackbar.
                // ScaffoldMessenger.of(context)
                //     .showSnackBar(SnackBar(content: Text('$item dismissed')));
              },
              // Show a red background as the item is swiped away.
              background: Container(color: Colors.red),
              child: ListTile(
                title: Text(item.name),
                leading: CircleAvatar(child: Text("${item.mark}"),),
              ),
            );
          },
        ),
      );
}
