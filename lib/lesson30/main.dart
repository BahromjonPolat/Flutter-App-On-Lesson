import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LessonThirtyMainPage extends StatefulWidget {
  @override
  _LessonThirtyMainPageState createState() => _LessonThirtyMainPageState();
}

class _LessonThirtyMainPageState extends State<LessonThirtyMainPage>
    with TickerProviderStateMixin {
  TabController _tabController;
  Color _black = Colors.black;
  Color _indigo = Colors.indigo;
  Color _grey = Colors.grey;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: _indigo,
      ),
      body: _getBody(),
    );
  }

  Column _getBody() => Column(
        children: [
          _getTabBar(),
          _getTabView(),
        ],
      );


  TabBar _getTabBar() => TabBar(
          controller: _tabController,
          labelColor: _indigo,
          indicatorColor: _indigo,
          unselectedLabelColor: _grey,
          indicatorSize: TabBarIndicatorSize.tab,
          enableFeedback: false,
          tabs: [
            _setTabTitle("All"),
            _setTabTitle("Personal"),
            _setTabTitle("Groups"),
          ]);

  Tab _setTabTitle(String title) => Tab(text: title);

  Expanded _getTabView() => Expanded(
        child: TabBarView(
          controller: _tabController,
          children: [
            _setList(),
            _setIcon(CupertinoIcons.person_crop_square_fill),
            _setIcon(CupertinoIcons.person_circle_fill),
          ],
        ),
      );

 ListView _setList()=> ListView.builder(
     itemCount: 25,
     itemBuilder: (context, index) {
    return ListTile(
      title: Text("Person $index", style: TextStyle(fontWeight: FontWeight.bold),),
      leading: CircleAvatar(
        radius: 27.0,
        backgroundImage: NetworkImage("https://source.unsplash.com/random/$index"),),
      subtitle: Text("Hello"),
      trailing: Text("15:45"),
    );
  });

  Container _setIcon(IconData iconData) => Container(
        alignment: Alignment.center,
        child: Icon(
          iconData,
          size: 64.0,
          color: _indigo,
        ),
      );
}
