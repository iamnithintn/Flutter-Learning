import 'package:flutter/material.dart';
// import 'package:get/get.dart';

class LearningUIPStateless extends StatelessWidget {
  LearningUIPStateless({super.key});


  var emailText = TextEditingController();
  var passText = TextEditingController();

  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("First Screen"),
        ),
        body: Center(
          child: Container(
            // color: Colors.grey,
            width: 400,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  // enabled: false,
                  controller: emailText,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.only(left: 50),
                    hintText: "Enabled Border and Focused Border",
                    prefixIcon: const Icon(
                      Icons.email,
                      color: Colors.grey,
                    ),
                    focusedBorder: OutlineInputBorder(
                      //when the user clicks on the text field
                      borderRadius: BorderRadius.circular(21),
                      borderSide:
                      const BorderSide(color: Colors.amber, width: 5),
                    ),
                    enabledBorder: OutlineInputBorder(
                      //normal border settings
                      borderRadius: BorderRadius.circular(21),
                      borderSide: const BorderSide(color: Colors.red, width: 3),
                    ),
                    disabledBorder: OutlineInputBorder(
                      //works when the text filed is disabled
                      borderRadius: BorderRadius.circular(21),
                      borderSide:
                      const BorderSide(color: Colors.blue, width: 3),
                    ),
                  ),
                ),

                const SizedBox(
                  height: 20,
                ),

                TextField(
                  // keyboardType: TextInputType.datetime,
                  controller: passText,
                  obscureText: _obscureText,
                  obscuringCharacter: "*",
                  decoration: InputDecoration(
                      contentPadding: const EdgeInsets.only(left: 50),
                      hintText: "Enter Password",
                      prefixIcon: const Icon(Icons.lock),

                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(31),
                          borderSide: const BorderSide(color: Colors.blue))),
                ),

                ElevatedButton(
                    onPressed: () {
                      String uEmail = emailText.text.toString();
                      String uPass = passText.text;

                      print("EMail : $uEmail and password : $uPass");
                    },
                    child: const Text("Login"))

                // const SizedBox(height: 20,),

                // TextField(
                //   decoration: InputDecoration(
                //     enabledBorder: OutlineInputBorder(
                //       borderRadius: BorderRadius.circular(21),
                //       borderSide: const BorderSide(
                //           color: Colors.red,
                //           width: 5
                //       ),
                //     ),
                //   ),
                // ),
              ],
            ),
          ),
        ));
  }
}
