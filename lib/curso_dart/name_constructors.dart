void main(){
  //map para simular un json
  final Map<String, dynamic>rawJson = {
    'name': 'Tony stark',
    'power': 'Money',
    'isAlive': true
  };

  //obtención de json para variable ironman
  final ironman = Hero.fromJson(rawJson);

//   final ironman = Hero(
//     isAlive: rawJson['isAlive2'] ?? false, //?? evalua si es null
//     name: 'Money',
//     power: 'Tony Stark'
//   );


//   final ironman = Hero(
//     isAlive: false,
//     name: 'Money',
//     power: 'Tony Stark'
//   );



  print(ironman);
}

//clase Hero
class Hero {
  String name;
  String power;
  bool isAlive;

  //constructor de hero que pide sus parámetros como requerido
  Hero({
    required this.name,
    required this.power,
    required this.isAlive
  });

  //creación de hero desde json
  Hero.fromJson(Map<String, dynamic> json)
  //si el valor no es asignado, se va a asignar por default lo escrito
      : name = json['name'] ?? 'no name found',
        power = json['power'] ?? 'no power found',
        isAlive = json['isAlive'] ?? 'no isAlive found';


  //se sobreescribe el método toString para funcionar de diferente forma
  //originalmente toString a hero se muestra como "Instance of Hero"
  @override
  String toString(){
    return '$name, $power, isAlive: ${ isAlive ? 'YES!':'Nope'} ';
  }
}
