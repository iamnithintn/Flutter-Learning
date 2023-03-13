import 'package:containers/app_screens/first_screen.dart';
import 'package:flutter/material.dart';

void main () => runApp(const MyApplication());


class MyApplication extends StatelessWidget {
  const MyApplication({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        title: "A Joke",
        home: Scaffold(
          appBar: AppBar(
              title: const Text('Data')
          ),
          body: const FirstScreen()
        )
    );
  }
}
