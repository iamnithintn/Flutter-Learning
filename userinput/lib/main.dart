import 'package:flutter/material.dart';
import 'package:userinput/userinput.dart';
// import 'package:get/get.dart';


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
          primarySwatch: Colors.green
      ),
      home:  FormWidgets(),
    );
  }

}



