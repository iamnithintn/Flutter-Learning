import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Text Widget",
        ),
      ),
      body:
      const Text("Hello World!",
        style: TextStyle(
          fontSize: 25,
          color: Colors.purple,
          fontWeight: FontWeight.bold,
          backgroundColor: Colors.yellow,
        ),
      ),
    );
  }
}
