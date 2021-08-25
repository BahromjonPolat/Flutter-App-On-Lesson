import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LessonTextFlexPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          // Sliver App Bar
          _showSliverAppBar(),
          _sliverList()
        ],
      ),
    );
  }

  _showSliverAppBar() => SliverAppBar(
        stretch: true,
        floating: true,
        flexibleSpace: FlexibleSpaceBar(
          background: Image.network(
            "https://cdn.pixabay.com/photo/2018/07/24/15/59/bremen-3559469__340.jpg",
            fit: BoxFit.cover,
          ),
        ),
        title: Text("Title"),
        actions: [
          IconButton(icon: Icon(CupertinoIcons.search), onPressed: () {}),
        ],
        expandedHeight: 240.0,
      );

  _sliverList() => SliverList(
          delegate: SliverChildListDelegate(
        _sliverChildDelegateItems,
      ));

  List<Widget> _sliverChildDelegateItems = List.generate(
      10,
      (index) => Container(
            height: 240.0,
            width: 360.0,
            color: Colors.green,
            margin: EdgeInsets.all(16.0),
          ));
}
