import 'package:flutter/material.dart';

class LearningGridViewBuilder extends StatelessWidget {
  const LearningGridViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Grid-View"),
        ),
        body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 10.0,
            crossAxisSpacing: 10.0,
          ),
          itemBuilder: (context, index) {
            return GridTile(
              child: Container(
                color: Colors.blueAccent,
                child: Center(
                  child: Text(
                    'Item $index',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
            );
          },
          itemCount: 15,
        )
    );
  }
}
