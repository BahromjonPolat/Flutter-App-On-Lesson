import 'package:flutter/material.dart';
import 'package:my_flutter_app/lesson39/pokemon_model.dart';

class PokedexDetailsPage extends StatefulWidget {
  Pokemon pokemon;
  PokedexDetailsPage(this.pokemon);

  @override
  _PokedexDetailsPageState createState() => _PokedexDetailsPageState();
}

class _PokedexDetailsPageState extends State<PokedexDetailsPage> {
  Pokemon _pokemon;
  double _height;
  double _width;

  @override
  void initState() {
    super.initState();
    _pokemon = widget.pokemon;
  }

  @override
  Widget build(BuildContext context) {
    _height = MediaQuery.of(context).size.height;
    _width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: _getBody(),
    );
  }

  _getBody() => Column(
    children: [
      Image.network(_pokemon.img),
      _setText("Name", _pokemon.name),
      _setText("Egg", _pokemon.egg),
      _setText("Candy", _pokemon.candy),
      _setText("Name", _pokemon.spawnTime),
    ],

  );

  _setText(String title, String info) => Row(
    children: [
      Text("$title: "),
      Text("$info")
    ],
  );
}

