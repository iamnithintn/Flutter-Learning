import 'package:flutter/material.dart';
import 'card.dart';

void main(){
  runApp(const MyAppHi());
}

class MyAppHi extends StatelessWidget{
  const MyAppHi({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Project Building",
      theme: ThemeData(
          primarySwatch: Colors.purple
      ),
      home: const LearningCardWidget(),
    );
  }
}