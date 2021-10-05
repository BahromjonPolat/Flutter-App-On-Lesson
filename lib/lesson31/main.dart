import 'package:flutter/material.dart';

class LessonThirtyOneMainPage extends StatefulWidget {
  @override
  _LessonThirtyOneMainPageState createState() =>
      _LessonThirtyOneMainPageState();
}

class _LessonThirtyOneMainPageState extends State<LessonThirtyOneMainPage>
    with TickerProviderStateMixin {
  TabController _tabController;
  Color _amber = Colors.amber;
  Color _indigo = Colors.indigo;
  Color _green = Colors.green;
  int _currentIndex = 0;
  List<Color> _colorList;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    _colorList = [_amber, _indigo, _green];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _getAppBar(),
      body: _getBody(),
    );
  }

  AppBar _getAppBar() => AppBar(
        title: _setTitle("TabBar"),
        bottom: TabBar(
          controller: _tabController,
          tabs: [
            _setTab("Home", Icons.home),
            _setTab("Contacts", Icons.contact_mail),
            _setTab("Profile", Icons.person),
          ],
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
        ),
      );

  Container _getBody() => Container(
    color: _colorList[_currentIndex],
  );

  Tab _setTab(String title, IconData iconData) => Tab(
        text: title,
        icon: Icon(iconData),
      );

  Text _setTitle(String title) => Text(title);
}
