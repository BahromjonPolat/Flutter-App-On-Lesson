import 'package:flutter/material.dart';

class TelegramMainUI extends StatefulWidget {
  @override
  _TelegramMainUIState createState() => _TelegramMainUIState();
}

class _TelegramMainUIState extends State<TelegramMainUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Plus Messenger"),
        backgroundColor: Color.fromARGB(255, 19, 140, 41),
        actions: [
          setIconButton(Icon(Icons.lock_open)),
          setIconButton(Icon(Icons.search)),
          setIconButton(Icon(Icons.folder_open)),
        ],
      ),
      body: Column(
        children: [
          Container(
            color: Color.fromARGB(255, 19, 140, 41),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                setIconButton(Icon(Icons.apps)),
                setIconButton(Icon(Icons.person_outline_outlined)),
                setIconButton(Icon(Icons.people_alt_outlined)),
                setIconButton(Icon(Icons.people)),
                setIconButton(Icon(Icons.rss_feed)),
                setIconButton(Icon(Icons.hourglass_bottom_outlined)),
                setIconButton(Icon(Icons.star_border)),
              ],
            ),
          ),
          setChatList("Funny cats", "New cat", "07:45", "2", "https://cdn.pixabay.com/photo/2016/06/14/00/14/cat-1455468__340.jpg"),
          setChatList("Kitten", "_---", "08:45", "3", "https://cdn.pixabay.com/photo/2013/04/01/03/45/cat-98359__340.jpg"),
          setChatList("Cats GO", "I want to eat 🐭", "07:45", "65", "https://cdn.pixabay.com/photo/2016/01/20/13/05/cat-1151519__340.jpg"),
          setChatList("Animal life", "🐭🐭🐭", "07:45", "32", "https://cdn.pixabay.com/photo/2015/02/25/17/56/cat-649164__340.jpg"),
          setChatList("NatGeo", "This is national geographic", "17:47", "102", "https://cdn.pixabay.com/photo/2021/07/13/11/34/cat-6463284__340.jpg"),
          setChatList("Meow", "Meow city", "16:02", "9", "https://cdn.pixabay.com/photo/2018/03/26/02/05/cat-3261420__340.jpg"),
        ],
      ),
    );
  }

  Widget setIconButton(Icon icon) => IconButton(
        onPressed: () {

        },
        icon: icon,
        color: Colors.white,
      );

  Widget setChatList(String name, String message, String time, String amount,
          String img) =>
      Container(
        padding: EdgeInsets.only(left: 16.0, top: 4.0, right: 16.0),
        alignment: Alignment.center,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 16.0),
              child: CircleAvatar(
                radius: 28.0,
                backgroundColor: Colors.indigo,
                backgroundImage: NetworkImage(img),
              ),
            ),
            Expanded(
              child: Container(
                height: 64.0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          name,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          time,
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          message,
                          style: TextStyle(fontWeight: FontWeight.w300),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 8.0, vertical: 4.0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16.0),
                              color: Colors.grey),
                          child: Text(
                            amount,
                            style: TextStyle(color: Colors.white),
                          ),
                        )
                      ],
                    ),
                    Divider(
                      color: Colors.black,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      );
}
