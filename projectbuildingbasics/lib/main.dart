import 'package:flutter/material.dart';

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
        home: const FirstScreen(),


    );
  }

}


class FirstScreen extends StatelessWidget{
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("First Screen"),
      ),
      body: Container(
        color: Colors.amber.shade200,
      ),
    );
  }

}
