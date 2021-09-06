import 'package:flutter/material.dart';
import 'package:my_flutter_app/lesson14/data/car_info.dart';

class LessonFourTeenCarInfoPage extends StatelessWidget {
  int index;

  LessonFourTeenCarInfoPage(this.index);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _getBodyCustomScrollView(),
    );
  }

  _getBodyCustomScrollView() => CustomScrollView(
        slivers: [
          _getSliverAppBar(),
          _getSliverList(),
        ],
      );

  _getSliverAppBar() => SliverAppBar(
        floating: true,
        stretch: true,
        title: Text(CarInfo.CAR_NAMES[index]),
        expandedHeight: 240,
        flexibleSpace: FlexibleSpaceBar(
          background: Image.asset(
            "images/cars/${CarInfo.CAR_NAMES[index].toLowerCase()}_katta$index.jpeg",
            fit: BoxFit.cover,
          ),
        ),
      );

  _getSliverList() =>
      SliverList(delegate: SliverChildListDelegate([_getCarInfo()]));

  _getCarInfo() => Container(
        margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              CarInfo.CAR_YEARS[index],
              style: TextStyle(color: Colors.grey),
            ),
            SizedBox(
              height: 16.0,
            ),
            Text(
              CarInfo.CAR_INFO[index],
              style: TextStyle(
                fontSize: 18.0,
              ),
            ),
          ],
        ),
      );
}
