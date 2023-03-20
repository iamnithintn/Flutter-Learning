import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  static const String KEYNAME = "name";
  var nameValue = "No Data Saved";

  @override
  void initState() {
    super.initState();

    getValue();
  }
  @override
  Widget build(BuildContext context) {
    var nameController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Shared Preference!"),
      ),
      body: Center(
        child: SizedBox(
          width: 200,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: nameController,
                decoration: InputDecoration(
                    label: const Text("Name"),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(21))),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                  onPressed: () async {
                    var name = nameController.text.toString();
                    var prefs = await SharedPreferences.getInstance();

                    prefs.setString(KEYNAME, name);
                  },
                  child: const Text("Save")),

              const SizedBox(height: 20,),

              Text(nameValue),
            ],
          ),
        ),
      ),
    );
  }

  void getValue() async{

    var prefs = await SharedPreferences.getInstance();

    var getName = prefs.getString(KEYNAME);

    nameValue = getName ?? "No Valued Saved";
    // nameValue = getName !=null ? getName: "No Valued Saved";

    setState(() {

    });

  }
}
