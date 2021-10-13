import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:my_flutter_app/lesson39/details_page.dart';
import 'package:my_flutter_app/lesson39/pokemon_model.dart';

class LessonThirtyNineMain extends StatefulWidget {
  @override
  _LessonThirtyNineMainState createState() => _LessonThirtyNineMainState();
}

class _LessonThirtyNineMainState extends State<LessonThirtyNineMain> {
  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (context, orientation) => Scaffold(
        backgroundColor:
            orientation == Orientation.portrait ? Colors.white : Colors.yellow,
        appBar: _showAppBar(),
        body: _getBody(),
      ),
    );
  }

  _getBody() => FutureBuilder(
      future: _getPokemonData(),
      builder: (context, AsyncSnapshot<Pokedex> snap) {
        return snap.hasData
            ? ListView.builder(itemBuilder: (context, index) {
                return ListTile(
                  title: Text("Hello"),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) =>
                                PokedexDetailsPage(snap.data.pokemon[index])));
                  },
                );
              })
            : _showIndicator();
      });

  Future<Pokedex> _getPokemonData() async {
    Uri url = Uri.parse(
        "https://raw.githubusercontent.com/Biuni/PokemonGO-Pokedex/master/pokedex.json");
    var pokemonList = await http.get(url);
    if (pokemonList.statusCode == 200) {
      var json = jsonDecode(pokemonList.body);
      Pokedex pokedex = Pokedex.fromJson(json);
      print("pokedex");
      return Pokedex.fromJson(json);
    } else {
      throw Exception("ERROR");
    }
  }

  Center _showIndicator() => Center(
        child: CupertinoActivityIndicator(
          radius: 24.0,
        ),
      );

  AppBar _showAppBar() => AppBar(
        title: Text("Pokemon"),
        backgroundColor: Colors.yellow,
      );
}
