import 'package:flutter/material.dart';
import 'package:listview/listtile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  LearningListTile(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var arrNames = ['hi', 'bye', 'kai', 'sai', 'lai', 'guy'];

    return Scaffold(
      appBar: AppBar(
        title: const Text("ListView"),
      ),

      // body: ListView.separated(
      //   itemBuilder: (context, index) {
      //     return Row(
      //       crossAxisAlignment: CrossAxisAlignment.start,
      //       children: [
      //         Padding(
      //           padding: const EdgeInsets.all(8.0),
      //           child: Text(
      //             arrNames[index],
      //             style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
      //           ),
      //         ),
      //         Padding(
      //           padding: const EdgeInsets.all(8.0),
      //           child: Text(
      //             arrNames[index],
      //             style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
      //           ),
      //         ),
      //         Padding(
      //           padding: const EdgeInsets.all(8.0),
      //           child: Text(
      //             arrNames[index],
      //             style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
      //           ),
      //         )
      //       ],
      //     );
      //   },
      //   itemCount: arrNames.length,
      //   separatorBuilder: (context, index) {
      //     return const Divider(
      //       height: 100,
      //       thickness: 30,
      //       indent: 30,
      //     );
      //   },
      //   scrollDirection: Axis.horizontal,
      // ),

      // body: ListView.builder(
      //   itemBuilder: (context, index) {
      //     return Text(
      //       arrNames[index],
      //       style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
      //     );
      //   },
      //   itemCount: arrNames.length,
      //   itemExtent: 100,
      //   scrollDirection: Axis.vertical,
      // )

      body: Center(
        child: ListView(
          scrollDirection: Axis.horizontal,
          // reverse: true,
          children: const [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("Data-1",
              style: TextStyle(
                color: Colors.purple,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("Data-2",
                style: TextStyle(
                  color: Colors.purple,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("Data-3",
                style: TextStyle(
                  color: Colors.purple,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("Data-4",
                style: TextStyle(
                  color: Colors.purple,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],

        ),
      )
    );
  }
}
