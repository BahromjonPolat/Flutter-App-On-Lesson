
import 'package:flutter/material.dart';

class Sport {
  String title;
  String imageUrl;
  MaterialColor color;

  Sport(this.title, this.color, this.imageUrl);
}

List<Sport> getSport() {
  List<Sport> sports = [];
  sports.add(new Sport("Swimming", Colors.indigo, "images/swimming.png"));
  sports.add(new Sport("Running", Colors.orange, "images/running.png"));
  sports.add(new Sport("Football", Colors.red, "images/football.png"));
  sports.add(new Sport("Basketball", Colors.blue, "images/basketball.png"));
  sports.add(new Sport("Cycling", Colors.blueGrey, "images/cycling.png"));
  sports.add(new Sport("Baseball", Colors.deepOrange, "images/baseball.png"));
  sports.add(new Sport("Tennis", Colors.green, "images/tennis.png"));
  sports.add(new Sport("Taekwondo", Colors.grey, "images/karate2.png"));
  sports.add(new Sport("Karate", Colors.pink, "images/karate.png"));
  sports.add(new Sport("Boxing", Colors.deepOrange, "images/boxer.png"));

  return sports;
}