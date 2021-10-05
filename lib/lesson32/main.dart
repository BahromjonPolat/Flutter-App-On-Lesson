import 'package:flutter/material.dart';
import 'package:my_flutter_app/lesson32/qr_scanner.dart';
import 'package:my_flutter_app/lesson32/text.dart';
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';

class LessonThirtyTwoMainPage extends StatelessWidget {
  BuildContext _context;
  @override
  Widget build(BuildContext context) {
    _context = context;
    return Scaffold(
      body: _getBody(),
    );
  }

  Container _getBody() => Container(
    alignment: Alignment.center,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _setButton("QR Code Scanner", (){
          Navigator.push(_context, MaterialPageRoute(builder: (_)=>QRViewExample()));
        }),

        _setButton("Launch URL", () {
          launch("https://google.com/");
        }),

      ],
    ),
  );

  ElevatedButton _setButton(String title, onPressed) =>
      ElevatedButton(onPressed: onPressed, child: Text(title));
}
