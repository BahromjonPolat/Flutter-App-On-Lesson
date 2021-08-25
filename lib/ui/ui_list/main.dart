import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_flutter_app/ui/ui_list/lesson_list.dart';
import 'package:my_flutter_app/ui/ui_list/model/lesson.dart';

class LessonListPage extends StatefulWidget {
  @override
  _LessonListPageState createState() => _LessonListPageState();
}

class _LessonListPageState extends State<LessonListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lesson list"),
      ),
      body: Container(
        child: getUIList(),
      ),
    );
  }

  Widget getUIList() {
    return ListView.builder(
        itemCount: getLessons().length,
        itemBuilder: (context, index) {
          Lesson lesson = getLessons()[index];
          return Card(

            child: ListTile(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (_){
                  return lesson.body;
                }));
              },
              leading: lesson.icon,
              title: Text(
                lesson.title,
              ),
              subtitle: Text(
                lesson.subTitle,
              ),
              trailing: Icon(
                CupertinoIcons.arrow_right_circle_fill,
                color: Colors.deepOrange,
              ),
            ),
          );
        });
  }

}
