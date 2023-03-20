import 'package:flutter/material.dart';

class LearningCircularAvatar extends StatelessWidget{
  const LearningCircularAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Circle Avatar"),
      ),



      // body: const Center(
      //   child: CircleAvatar(
      //     backgroundImage: AssetImage('assets/images/flutter5786.jpg'),
      //     backgroundColor: Colors.green,
      //     radius: 100,
      //     // minRadius: 50,
      //   ),
      // ),

      body: CircleAvatar(
        radius: 60,
        backgroundColor: Colors.green,
        child: Container(
          // color: Colors.red,
          height: 65,
          width: 65,
          child: Column(
            children: [
              Container(
                // color: Colors.blue,
                width: 40,
                height: 40,
                child: Image.asset('assets/images/flutter5786.jpg'),
              ),
              const Text("Flutter",
              style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}