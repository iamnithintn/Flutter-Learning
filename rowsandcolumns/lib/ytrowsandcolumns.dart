import 'package:flutter/material.dart';

class YtRowsAndColumns extends StatelessWidget {
  const YtRowsAndColumns({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "YT Rows and Cols",
        ),
      ),
      body: Container(
        height: 800,
        width: 800,
        color: Colors.grey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,


          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment,

              children: [
                const Text("0", style: TextStyle(fontSize: 40)),
                const Text("1", style: TextStyle(fontSize: 40)),
                const Text("2", style: TextStyle(fontSize: 40)),
                const Text("3", style: TextStyle(fontSize: 40)),
                ElevatedButton(
                  child: Text("data"),
                  onPressed: () {
                    print("object");
                  },
                ),

                const SizedBox(width: 50,),

                const Text("0", style: TextStyle(fontSize: 40)),
                const Text("1", style: TextStyle(fontSize: 40)),
                const Text("2", style: TextStyle(fontSize: 40)),
                const Text("3", style: TextStyle(fontSize: 40)),
                ElevatedButton(
                  child: Text("data"),
                  onPressed: () {
                    print("object");
                  },
                ),
              ],
            ),
            const SizedBox(height: 50,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("0", style: TextStyle(fontSize: 40)),
                const Text("1", style: TextStyle(fontSize: 40)),
                const Text("2", style: TextStyle(fontSize: 40)),
                const Text("3", style: TextStyle(fontSize: 40)),
                ElevatedButton(
                  child: Text("data"),
                  onPressed: () {
                    print("object");
                  },
                ),

                const SizedBox(width: 50,),
                const Text("0", style: TextStyle(fontSize: 40)),
                const Text("1", style: TextStyle(fontSize: 40)),
                const Text("2", style: TextStyle(fontSize: 40)),
                const Text("3", style: TextStyle(fontSize: 40)),
                ElevatedButton(
                  child: Text("data"),
                  onPressed: () {
                    print("object");
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}