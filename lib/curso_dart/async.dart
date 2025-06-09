void main() async{
  print ('Inicio del programa');
  try{
    final value = await httpGet('https://fernando-herrera.com/courses');
    print(value);
  }
  catch (err){
    print('Tenemos un error: $err');
  }

  print ('Fin del programa');
}


Future<String> httpGet(String url) async{

  //solo se permite usar await, solo si la función o metodo es async
  await Future.delayed(const Duration(seconds: 3));
//   throw 'Error en la petición http';
  return 'Tenemos un valor de la petición';
}

