import 'package:flutter/material.dart';
import 'package:my_flutter_app/lesson14/data/car_info.dart';
import 'package:my_flutter_app/lesson14/screens/car_info_page.dart';

class LessonFourTeenCarListPage extends StatefulWidget {
  @override
  _LessonFourTeenCarListPageState createState() =>
      _LessonFourTeenCarListPageState();
}

class _LessonFourTeenCarListPageState extends State<LessonFourTeenCarListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(CarInfo.app_name),
      ),
      body: _pullToRefresh(),
    );
  }

  /// Sahifani yangilash uchun funlksiya.
  _pullToRefresh() => RefreshIndicator(
      color: Colors.green,
      displacement: 15.0,
      child: _getBody(),
      onRefresh: () {
        return Future.delayed(Duration(seconds: 3), () {});
      });

  /// Ilovaning tana qismi. U mashinalarning listini ko`rsatadi.
  _getBody() => ListView.builder(
      physics: BouncingScrollPhysics(),
      itemCount: CarInfo.CAR_NAMES.length,
      itemBuilder: (context, index) => _setCarInfo(index));

  ///
  Widget _setCarInfo(int index) => Card(
        child: ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage(
                "images/cars/${CarInfo.CAR_NAMES[index].toLowerCase()}$index.jpeg"),
          ),
          title: Text(CarInfo.CAR_NAMES[index]),
          subtitle: Text(CarInfo.CAR_YEARS[index]),
          trailing: Icon(Icons.arrow_forward_ios),
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => LessonFourTeenCarInfoPage(index)));
          },
        ),
      );
}
