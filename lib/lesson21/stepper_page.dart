import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LessonTwentyOneStepperPage extends StatefulWidget {
  @override
  _LessonTwentyOneStepperPageState createState() =>
      _LessonTwentyOneStepperPageState();
}

class _LessonTwentyOneStepperPageState
    extends State<LessonTwentyOneStepperPage> {
  Size _size;
  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  int _currentStep = 0;

  GlobalKey _nameKey = GlobalKey<FormFieldState>();
  GlobalKey _emailKey = GlobalKey<FormFieldState>();
  GlobalKey _passwordKey = GlobalKey<FormFieldState>();

  @override
  Widget build(BuildContext context) {
    _size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: _getAppBar(),
      body: _getBody(),
    );
  }

  AppBar _getAppBar() => AppBar(
        title: Text("Stepper"),
      );

  _getBody() => SingleChildScrollView(
        child: Stepper(
          type: StepperType.vertical,
          steps: _getSteps(),
          currentStep: _currentStep,
          onStepContinue: () {
            if (_currentStep < _getSteps().length - 1) {
              _currentStep++;
            }

            setState(() {});
          },
          onStepCancel: (){
            if(_currentStep > 0) {
              _currentStep--;
            }
            setState(() {

            });
          },
        ),
      );

  List<Step> _getSteps() => [
        Step(
          state: _setCurrentState(0),
          title: Text("Enter your name"),
          content: TextFormField(
            key: _nameKey,
            controller: _nameController,
            keyboardType: TextInputType.name,
            decoration:
                InputDecoration(border: OutlineInputBorder(), hintText: "Name"),

          ),
        ),
        Step(
            state: _setCurrentState(1),
            title: Text("Enter your email"),
            content: TextFormField(
              key: _emailKey,
              controller: _emailController,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: "Email"),
            )),
        Step(
            state: _setCurrentState(2),
            title: Text("Enter your password"),
            content: TextFormField(
              key: _passwordKey,
              obscureText: true,
              controller: _passwordController,
              keyboardType: TextInputType.visiblePassword,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: "Password"),
            )),
      ];

  StepState _setCurrentState(int index) {
    if (index ==_currentStep) return StepState.editing;
    return StepState.indexed;
  }
}
