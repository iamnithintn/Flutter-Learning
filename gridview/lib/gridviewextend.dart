import 'package:flutter/material.dart';

class LearningGridViewExtent extends StatelessWidget {
  const LearningGridViewExtent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Grid-View"),
      ),
      body: Column(
        children: [
          Container(
            height: 400,
            // width: 400,
            child: GridView.extent(
              //difference seen with mobile landscape and portrait mode switching
              maxCrossAxisExtent: 100,
              mainAxisSpacing: 20,
              crossAxisSpacing: 20,
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
          )
        ],
      ),
    );
  }
}
