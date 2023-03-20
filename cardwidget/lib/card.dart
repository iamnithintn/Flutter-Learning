import 'package:flutter/material.dart';

class LearningCardWidget extends StatelessWidget {
  const LearningCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Card Widget"),
        ),
        body: const Center(
          child: Card(
            shadowColor: Colors.blue,
            elevation: 20,
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "This is a Flutter Card",
                style: TextStyle(fontSize: 25),
              ),
            ),
          ),
        )
    );
  }
}
