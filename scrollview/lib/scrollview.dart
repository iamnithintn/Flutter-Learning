import 'package:flutter/material.dart';

class LearningScrollView extends StatelessWidget{
  const LearningScrollView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 200,
              color: Colors.blueGrey,
            ),
            Container(
              height: 200,
              color: Colors.purple,
            ),
            Container(
              height: 200,
              color: Colors.indigo,
            ),
            Container(
              height: 200,
              color: Colors.blue,
            ),
            Container(
              height: 200,
              color: Colors.green,
            ),
            Container(
              height: 200,
              color: Colors.yellow,
            ),
            Container(
              height: 200,

              color: Colors.orange,
            ),
            Container(
              height: 200,
              color: Colors.red,
            ),
          ],
        ),
      ),
    );
  }

}