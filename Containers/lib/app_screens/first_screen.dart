import 'dart:math';
import 'package:flutter/material.dart';

void main()=> runApp(const FirstScreen());

class FirstScreen extends StatelessWidget{
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
   return  Material(
       color: Colors.blueAccent,
       child: Center(
         child:
           Text(number(),
           style: const TextStyle(color: Colors.white, fontSize: 80),
         ),
       ),
   );
  }

  String number(){
    var random = Random();
    int nums = random.nextInt(200);
    return "The number is $nums";
  }
}