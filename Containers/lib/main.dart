import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main()=> runApp(const MyApp());


class MyApp extends StatelessWidget{
  const MyApp({super.key});


  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      title: "Flutter day 1",
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget{
  const MyHomePage({super.key});

  @override
  Widget build (BuildContext context){
    return Scaffold(

      appBar: AppBar(
        title: const Text('Container'),
      ),
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          color: Colors.grey,
          child:  Center(
            child: Text('Hello Native Minds',
              style: GoogleFonts.lato(
                textStyle: const TextStyle(color: Colors.purple, letterSpacing: 0.3)
              ),
            ),
          ),
        ),
      ),
    );
  }
}