import 'package:flutter/material.dart';
import 'package:scrollview/scrollview.dart';

void main(){
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Demo(),
  ))
  ;
}

class Demo extends StatelessWidget{
  const Demo({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Scrollview"),
      ),
      body: LearningScrollView(),
    );

  }
}