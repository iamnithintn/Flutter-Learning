import 'package:flutter/material.dart';
import 'package:stylesandthemes/styles.dart';

void main() {
  runApp(const MyAppHi());
}

class MyAppHi extends StatelessWidget {
  const MyAppHi({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Project Building",
      theme: ThemeData(
        primarySwatch: Colors.purple,
        textTheme: const TextTheme(
          displayLarge: TextStyle(fontSize: 21,fontStyle: FontStyle.italic), //headline1
          displayMedium: TextStyle(fontSize: 15,fontWeight: FontWeight.bold), //headline2
          titleMedium: TextStyle(fontSize: 15,fontStyle: FontStyle.italic)  //subtitle1
        ),
      ),
      home: const StylesAndThemes(),
    );
  }
}
