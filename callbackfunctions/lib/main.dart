import 'package:flutter/material.dart';

import 'callbackfunctions.dart';

void main(){
  runApp(const App1());
}

class App1 extends StatelessWidget{
  const App1({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Callback Functions",
      home: LearningCallbackFunctions(),
    );
  }
}
