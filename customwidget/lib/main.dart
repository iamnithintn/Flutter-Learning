import 'package:flutter/material.dart';

import 'custombuttons.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LButtonsW(),
    );
  }
}

class LButtonsW extends StatelessWidget {
  const LButtonsW({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Custom Widgets"),
      ),
      body: Center(
        child: Container(
          width: 100,
          height: 50,
          child: LearningCustomRoundedButtons(
            btnName: 'Login',
            icon: const Icon(Icons.lock),
            callback: () {
              print("Custom Login Widget is working!!");
            },
          ),
        ),
      ),
    );
  }
}
