import 'package:flutter/material.dart';

class LearningGridViewCount extends StatelessWidget {
  const LearningGridViewCount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Grid-View"),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,
        children: [
          Container(
            color: Colors.blue,
          ),
          Container(
            color: Colors.red,
          ),
          Container(
            color: Colors.green,
          ),
          Container(
            color: Colors.orange,
          ),
          Container(
            color: Colors.grey,
          ),
          Container(
            color: Colors.amber,
          ),
          Container(
            color: Colors.blue,
          ),
          Container(
            color: Colors.red,
          ),
          Container(
            color: Colors.green,
          ),
          Container(
            color: Colors.orange,
          ),
          Container(
            color: Colors.grey,
          ),
          Container(
            color: Colors.amber,
          ),
        ],
      ),
    );
  }
}
