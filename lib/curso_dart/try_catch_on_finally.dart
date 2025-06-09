void main() async{
  print ('Inicio del programa');
  try{
    final value = await httpGet('https://fernando-herrera.com/courses');
    print('exito: $value');
  } on Exception catch(err){
    print('Tenemos una Exception: $err');
  }
  catch (err){
    print('OOPS!! algo terrible pasó: $err');
  }
  finally {
    print('fin del try y catch');
  }

  print ('Fin del programa');
}


Future<String> httpGet(String url) async{

  //solo se permite usar await, solo si la función o metodo es async
  await Future.delayed(const Duration(seconds: 3));

  throw Exception('no hay parámetros en el URL');

//   throw 'Error en la petición http';
//   return 'Tenemos un valor de la petición';
}

