void main(){
  final Hero wolverine = Hero(
      name: 'Logan');
  print(wolverine);
  print(wolverine.name);
  print(wolverine.power);
}

class Hero {
  String name;
  String power;

  Hero({
    required this.name,
    this.power = 'sin poder'
  });

  //constructor
//   Hero(String pName, String pPower)
//     : name = pName,
//       power = pPower;

  @override
  String toString() {
    return '$name - $power';
  }

}