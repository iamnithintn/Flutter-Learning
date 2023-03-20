import 'package:flutter/material.dart';

class LearningFonts extends StatelessWidget{
  const LearningFonts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("First Screen"),
      ),
      body: Column(
        children: const [
          Text(
            "Hello",
            style: TextStyle(
              fontFamily: 'Playfair',
              fontSize: 50,
            ),
          ),
          Text(
            "Hello",
            style: TextStyle(
              fontSize: 50,
            ),
          ),
        ],
      ),


    );
  }

}