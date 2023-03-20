import 'package:flutter/material.dart';

class LearningStackWidget extends StatelessWidget {
  const LearningStackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stack Widget"),
      ),
      body: Center(
        child: Container(
          width: 300,
          height: 300,
          // color: Colors.orange,
          child: Stack(
            children: [
              Container(
                width: 200,
                height: 200,
                color: Colors.purpleAccent,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Text(
                      "Container 1",
                      style: TextStyle(fontSize: 35),
                    )
                  ],
                ),
              ),
              Positioned(
                left: 35,
                top: 35,
                child: Container(
                  width: 200,
                  height: 200,
                  color: Colors.blue,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Text(
                        "Container 2",
                        style: TextStyle(fontSize: 25),
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 150,
                bottom: 150,
                // top: 150,
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.red,
                  child: Row(
                    // crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "Container 3",
                        style: TextStyle(fontSize: 15),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
