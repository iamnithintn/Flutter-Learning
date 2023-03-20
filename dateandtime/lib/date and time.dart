import 'package:flutter/material.dart';

class LearningDateAndTime extends StatelessWidget{
  const LearningDateAndTime({super.key});

  @override
  Widget build(BuildContext context){
    
    var time = DateTime.now();
    
    return Scaffold(
      appBar: AppBar(
        title: const Text("Date and Time"),
      ),
      body: Center(
        child: SizedBox(
          width: 300,
          height: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Text("Current Time ${time.hour}:${time.minute}:${time.second}",
                style: TextStyle(fontSize: 30),
                ),
              ),
              const SizedBox(height: 50,),
              Center(
                child: ElevatedButton(onPressed: (){
                  //setState()        --> can be used only on stateful widget or use getx
                }, child: Text("Current Time"),),
              )
            ],
          ),
        ),
      ),
    );
  }
}