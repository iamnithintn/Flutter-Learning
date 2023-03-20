import 'package:flutter/material.dart';

class LarningInkwell extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        onTap: () {
          print("Tapped Me!!!");
        },
        onDoubleTap: () {
          print("Double Tapped me!!");
        },
        onLongPress: () {
          print("LongPress");
        },
        child: Container(
          width: 200,
          height: 200,
          decoration: BoxDecoration(
              color: Colors.amber, borderRadius: BorderRadius.circular(40)),
          child:  Center(
              child: InkWell(
                onTap: (){
                  print("Text Widget Tapped");
                },
                child: const Text(
            "Inkwell Testing",
            style: TextStyle(
                fontSize: 20,
                fontStyle: FontStyle.italic,
            ),
          ),
              )),

          // child: ElevatedButton(
          //   child: Text("Click-me"),
          //   onPressed: (){
          //     print("object");
          //   },
          // ),
        ),
      ),
    );
  }
}
