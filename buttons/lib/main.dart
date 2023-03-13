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

       // TextButton(
       //   child: const Text('Click Me!!!'),
       //   onPressed:(){
       //     print("You fool!!");
       //   },
       //   onLongPress: (){
       //     print("Dumbass!!");
       //   },
       // ),

       // ElevatedButton(
       //   child: Text("Click me!") ,
       //   onPressed: (){
       //     print("Fool x 2");
       //     },
       //   onLongPress:(){
       //     print("Dumbass x 2");
       //   },
       // )

       Center(
         child: SizedBox(
           height: 100,
           width: 200,
           child: OutlinedButton(
             style: OutlinedButton.styleFrom(
               foregroundColor: Colors.red,
             ),
             onPressed: (){
               print("Clicked me!");
             },
             child:const Text("Tap Me"),
           ),
         ),
       )
     );
  }
}
