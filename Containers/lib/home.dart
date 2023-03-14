import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Container",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Center(
          child: Container(
            height: 100,
            width: 300,
            color: Colors.grey,
            child: const Center(
              child:  Text("Hello",
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 75.0,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w300,
                      color: Colors.black,
                      fontStyle: FontStyle.italic,
                  )
              ),
            ),
          ),
        )
    );
  }
}
