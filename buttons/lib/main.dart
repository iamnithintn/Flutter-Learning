import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});



  @override
  Widget build(BuildContext context) {
     return  Scaffold(
       appBar: AppBar(
         title: const Text('Buttons'),
       ),

       body:
       Column(
         children: [
           Row(
             children: [
               Center(
                 child: TextButton(
                   child: const Text('Click Me Text Button!!!'),
                   onPressed:(){
                     print("You fool!!");
                   },
                   onLongPress: (){
                     print("Dumbass!!");
                   },
                 ),
               ),
               ElevatedButton(
                 child: const Text("Click me Text Button!") ,
                 onPressed: (){
                   print("Fool x 2");
                 },
                 onLongPress:(){
                   print("Dumbass x 2");
                 },
               ),
               OutlinedButton(
                 style: OutlinedButton.styleFrom(
                   foregroundColor: Colors.red,
                 ),
                 onPressed: (){
                   print("Clicked me!");
                 },
                 child:const Text("Tap Me"),
               ),
             ],
           ),
           Row(
             children: [
               Center(
                 child: TextButton(
                   child: const Text('Click Me Text Button!!!'),
                   onPressed:(){
                     print("You fool!!");
                   },
                   onLongPress: (){
                     print("Dumbass!!");
                   },
                 ),
               ),
               ElevatedButton(
                 child: const Text("Click me Text Button!") ,
                 onPressed: (){
                   print("Fool x 2");
                 },
                 onLongPress:(){
                   print("Dumbass x 2");
                 },
               ),
               OutlinedButton(
                 style: OutlinedButton.styleFrom(
                   foregroundColor: Colors.red,
                 ),
                 onPressed: (){
                   print("Clicked me!");
                 },
                 child:const Text("Tap Me"),
               ),
             ],
           ),
         ],
       ),

     );
  }
}
