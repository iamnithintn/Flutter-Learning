import 'package:flutter/material.dart';

class LearningCallbackFunctions extends StatelessWidget {
  const LearningCallbackFunctions({super.key});

  @override
  Widget build(BuildContext context) {

    callback(String name){
      print("$name clicked me!!!");
    }

    return Scaffold(
        appBar: AppBar(
          title: const Text("Callback Functions"),
        ),
        body: Center(
          child: ElevatedButton(onPressed: () {
            callback("I");
          }, child: const Text("Custom Function")),
        )
    );
  }
}