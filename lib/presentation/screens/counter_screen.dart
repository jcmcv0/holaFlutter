import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {

   const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int clickCounter = 0;
  String labelClick = 'Clicks';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter Screen')
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$clickCounter', style: TextStyle(fontSize: 160, fontWeight: FontWeight.w100)),
            Text(clickCounter == 1 ? 'Click' : 'Clicks', style: TextStyle(fontSize: 25))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            clickCounter++;
            // if(clickCounter == 1){
            //   labelClick = 'Click';
            // } else {
            //   labelClick = 'Clicks';
            // }
            setState(() {});
          },
        child: const Icon(Icons.plus_one),
      ),
    );
  }
}
