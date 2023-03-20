import 'package:flutter/material.dart';
import 'expandedwidget.dart';


void main(){
  runApp(const MyAppHi());
}

class MyAppHi extends StatelessWidget{
  const MyAppHi({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Expanded Widget",
      theme: ThemeData(
          primarySwatch: Colors.indigo
      ),
      home: const FirstScreen(),


    );
  }

}



