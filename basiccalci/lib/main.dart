import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  var no1Controller = TextEditingController();
  var no2Controller = TextEditingController();

  var result = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Container(
          color: Colors.grey,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    // keyboardType: TextInputType.number,
                   controller: no1Controller,
                    decoration: const InputDecoration(
                        hintText: "Enter Number 1",
                        enabledBorder: OutlineInputBorder()),
                  ),
                ),
                 Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    // keyboardType: TextInputType.number,
                    controller: no2Controller,
                    decoration: const InputDecoration(
                        hintText: "Enter Number 2",
                        enabledBorder: OutlineInputBorder()),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                          onPressed: () {

                            var n1 = int.parse(no1Controller.text);
                            var n2 = int.parse(no2Controller.text);

                            var sum = n1 + n2;

                            result = "Sum of $n1 and $n2 is equal to $sum";

                            setState(() {});
                          },
                          child: Text("Add")),
                      ElevatedButton(
                          onPressed: () {
                            var n1 = int.parse(no1Controller.text);
                            var n2 = int.parse(no2Controller.text);

                            var sub = n1 - n2;
                            result =
                                "Difference b/w $n1 and $n2 is equal to $sub";

                            setState(() {});
                          },
                          child: Text("Sub")),
                      ElevatedButton(
                          onPressed: () {
                            var n1 = int.parse(no1Controller.text);
                            var n2 = int.parse(no2Controller.text);

                            var prod = n1 * n2;
                            result = "Product of $n1 and $n2 is equal to ${prod.toStringAsFixed(3)}";

                            setState(() {});
                          },
                          child: Text("Mul")),
                      ElevatedButton(
                          onPressed: () {
                            var n1 = int.parse(no1Controller.text);
                            var n2 = int.parse(no2Controller.text);

                            var div = n1 / n2;
                            result = "Quotient of $n1 / $n2 is equal to $div";

                            setState(() {});
                          },
                          child: Text("Div")),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Text(
                    result,
                    style: const TextStyle(fontSize: 25, color: Colors.purple),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
