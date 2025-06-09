
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:holaflutter/pokemon/pkmn_entity.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  PkmnEntity? pokemon;
  int pokemonId = 0;

  @override
  void initState() {
    super.initState();
    getPokemon();
  }

  Future<void> getPokemon() async {
    pokemonId++;
    final response = await Dio().get('https://pokeapi.co/api/v2/pokemon/$pokemonId');
    pokemon = PkmnEntity.fromJson(response.data);

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Petición Http')
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(pokemon?.name ?? 'No data'),
            if(pokemon != null)
              ...[
              Image.network(pokemon!.sprites.frontDefault),
              Image.network(pokemon!.sprites.backDefault)
            ]
          ],
        )
      ),
      floatingActionButton: FloatingActionButton(
          onPressed:
            getPokemon,
          child: const Icon(Icons.navigate_next)
          ),
    );
  }
}

