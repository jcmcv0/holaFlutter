import 'package:flutter/material.dart';

import '../config/theme/app_theme.dart';
import 'HomeScreen.dart';

void main(){
  runApp(const MainApp());
}

class MainApp extends StatelessWidget{
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme().getTheme(),
      home: const HomeScreen()
    );
  }

}