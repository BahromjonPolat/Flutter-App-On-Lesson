import 'package:flutter/material.dart';
import 'package:my_flutter_app/lesson14/data/car_info.dart';

class LessonFourTeenCarInfoPage extends StatefulWidget {
  int currentIndex;

  LessonFourTeenCarInfoPage(this.currentIndex);

  @override
  _LessonFourTeenCarInfoPageState createState() =>
      _LessonFourTeenCarInfoPageState();
}

class _LessonFourTeenCarInfoPageState extends State<LessonFourTeenCarInfoPage> {
  Size _size;

  @override
  Widget build(BuildContext context) {
    _size = MediaQuery.of(context).size;
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
        title: Text(CarInfo.CAR_NAMES[widget.currentIndex]),
        expandedHeight: 240,
        flexibleSpace: FlexibleSpaceBar(
          background: Image.asset(
            "images/cars/${CarInfo.CAR_NAMES[widget.currentIndex].toLowerCase()}_katta${widget.currentIndex}.jpeg",
            fit: BoxFit.cover,
          ),
        ),
      );

  _getSliverList() => SliverList(
          delegate: SliverChildListDelegate([
        _getCarInfo(),
        _showOtherCarsText(),
        _getOtherCars(),
      ]));

  _getCarInfo() => Container(
        margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              CarInfo.CAR_YEARS[widget.currentIndex],
              style: TextStyle(color: Colors.grey),
            ),
            SizedBox(
              height: 16.0,
            ),
            Text(
              CarInfo.CAR_INFO[widget.currentIndex],
              style: TextStyle(
                fontSize: 18.0,
              ),
            ),
          ],
        ),
      );

  _getOtherCars() => Container(
        height: _size.height * 0.3,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: CarInfo.CAR_NAMES.length,
            itemBuilder: (context, index) {
              
              if (index== widget.currentIndex) {
                return Container();
              }
              String carImage =
                  "images/cars/${CarInfo.CAR_NAMES[index].toLowerCase()}$index.jpeg";
              return GestureDetector(
                child: Card(
                  margin: EdgeInsets.fromLTRB(6.0, 0.0, 6.0, 16.0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0)),
                  child: Column(
                    children: [
                      Container(
                        width: _size.width * 0.4,
                        height: _size.width * 0.4,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.0),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(carImage),
                          ),
                        ),
                      ),
                      Text(CarInfo.CAR_NAMES[index])
                    ],
                  ),
                ),
                onTap: () {
                  setState(() {
                    widget.currentIndex = index;
                  });
                },
              );
            }),
      );

  _showOtherCarsText() => Container(
    padding: EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 8.0),
        child: Text(
          "Other Cars",
          style: TextStyle(color: Colors.black,
          fontWeight: FontWeight.bold,
            fontSize: 18.0
          ),
        ),
      );
}
