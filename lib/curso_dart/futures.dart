void main(){
  print ('Inicio del programa');
  httpGet('https://fernando-herrera.com/courses').then((value){
    print(value);
  })
      .catchError((err) {
    print('Error: $err');
  });
  print ('Fin del programa');
}


Future<String> httpGet(String url){
  return Future.delayed(const Duration(seconds: 3), (){
    throw 'Error en la petición http';
    //return 'Respuesta de la petición http';
  });
}


