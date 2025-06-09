void main(){


  //variable mySquare tipo Square, que tiene atributo side = 10
  final mySquare = Square(
      side: 10
  );

  mySquare.side = -5;//cambiar a positivo para resultado

  print ('área: ${mySquare.area}');
}

//calculo de area de un cuadrado
class Square {
  double _side; //side * side
  //(el guin bajo _ sirve para decir que es private)
  //teniendo uso solo dentro de esta clase

  Square({required double side})
  //uso de aserciones, en el constructor
      : assert(side >= 0, 'side must be >= 0'),
        _side = side;

  double get area{
    return _side * _side;
  }

  set side(double value){
    print('setting new value $value');

    if(value < 0) throw 'Value must be >= 0'; //para lanzar error

    _side = value;
  }

  double calculateArea(){
    return _side * _side;
  }
}