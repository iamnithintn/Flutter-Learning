import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var value = true;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Expanded Widget"),
      ),
      body: Row(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 2,
            child: Container(
              // margin: const EdgeInsets.only(left: 30),
              height: 100,
              width: 75,
              color: Colors.amber.shade200,
              child: Center(
                child: Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      border: const OutlineInputBorder(),
                      suffixIcon: InkWell(
                        child: const Icon(Icons.remove_red_eye_rounded),
                        onTap: () {
                          if(value==true){
                            value=false;
                          }
                          else if(value==false){
                            value=true;
                          }
                        },
                      ),
                    ),
                    obscureText: value,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(
              height: 100,
              width: 75,
              color: Colors.blue,
            ),
          ),
          Expanded(
            flex: 6,
            child: Container(
              height: 100,
              width: 75,
              color: Colors.red,
            ),
          ),
          Expanded(
            flex: 8,
            child: Container(
              height: 100,
              width: 75,
              color: Colors.green,
            ),
          ),
        ],
      ),
    );
  }
}
