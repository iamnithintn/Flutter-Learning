import 'package:flutter/material.dart';

class LearningRichTextWidget extends StatelessWidget {
  const LearningRichTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Rich text Widget"),
        ),
        body: RichText(
            text: const TextSpan(children: [
          TextSpan(
              text: "Hello",
              style: TextStyle(color: Colors.grey, fontSize: 30)),
          TextSpan(
              text: "World ",
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 45,
                  fontWeight: FontWeight.bold)),
          TextSpan(text: "Welcome to "),
          TextSpan(text: "Flutter")
        ]))

        // Row(
        //   children: const [
        //     Text(
        //       "Hello ",
        //       style: TextStyle(color: Colors.grey, fontSize: 35),
        //     ),
        //     Text("World!", style: TextStyle(color: Colors.blue, fontSize: 50))
        //   ],
        // ),
        );
  }
}
