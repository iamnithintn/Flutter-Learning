import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        // width: 350,
        // height: 400,
        // margin: EdgeInsets.only(left: 70.0, right: 40),
        // padding: const EdgeInsets.all(75.0),
        alignment: Alignment.center,
        color: Colors.purple,
        child: const Text("Hello", textDirection: TextDirection.ltr,
          style: TextStyle(
            decoration: TextDecoration.none,
            fontSize: 75.0,
            fontFamily: 'Raleway',
            fontWeight: FontWeight.w300,
            color: Colors.white,
            fontStyle: FontStyle.italic

          )
        ),
      ),
    );
  }

}