void main() {


  //Map<String, String> pokemon donde string1 es llave, string2 es  es valor
  final Map <String, dynamic> pokemon = {
    'name': 'Ditto',
    'hp': 100,
    'isAlive': true,
    'abilities': <String>['impostor'],
    'sprites': { //sprites es un mapa
      1: 'ditto/front.png',
      2: 'ditto/back.png'
    }

  };

  //Map<int, String> donde string1 es llave, string2 es  es valor
  // final pokemons = {
  //   1: 'ABC',
  //   2: 'XYZ',
  //   3: '123',
  //   150: 'AGJH'
  // };

  print(pokemon);
  print('Name: ${pokemon['name']}');
  print('Sprites: ${pokemon['sprites']}');
  print('Sprites/front: ${pokemon['sprites'][1]}');
  print('Sprites/back: ${pokemon['sprites'][2]}');
}