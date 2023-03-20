import 'package:flutter/material.dart';

import 'inkwell.dart';

void main() {
  runApp( const MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "inkwell",
    home: Demo(),
  ));
}

class Demo extends StatelessWidget{
  const Demo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("This is Inkwell"),
      ),
      body: LarningInkwell() ,
    );
  }

}
