import 'package:flutter/material.dart';

class Col extends StatelessWidget {
  const Col({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        alignment: Alignment.center,
        child: Column(
          children: const <Widget>[
            Expanded(
                child: Text(
              "Hallelujah",
              textDirection: TextDirection.ltr,
              style: TextStyle(
                  decoration: TextDecoration.none,
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            )),
            Text(
              "Merry Merry",
              textDirection: TextDirection.ltr,
              style: TextStyle(
                  decoration: TextDecoration.overline,
                  fontSize: 75,
                  fontStyle: FontStyle.italic,
                  color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
