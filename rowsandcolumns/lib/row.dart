import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        alignment: Alignment.center,
        color: Colors.deepPurple,
        child: Row(
          children: const <Widget>[
            Expanded(
              child: Text(
                "Aeroplane",
                style: TextStyle(
                    decoration: TextDecoration.none,
                    fontSize: 50,
                    color: Colors.white),
              ),
            ),
            Expanded(
              child: Text(
                "Helicopter, Helicopterrrrr",
                style: TextStyle(
                    decoration: TextDecoration.lineThrough,
                    fontSize: 25,
                    color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
