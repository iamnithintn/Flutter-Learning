import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        // padding: const EdgeInsets.all(44.44),
        // alignment: Alignment.center,
        color: Colors.purple,
        child: Column(
          children: [
            Row(
              children: [
                const Expanded(
                  child: Text(
                    "Data 1",
                    style: TextStyle(
                      decoration: TextDecoration.none,
                      color: Colors.white,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
                Row(
                  children: const [
                    Text(
                      "Data 1.1",
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        color: Colors.white,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              children: [
                const Expanded(
                  child: Text(
                    "Data 2",
                    style: TextStyle(
                      decoration: TextDecoration.none,
                      color: Colors.white,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 100,
                ),
                Row(
                  children: const [
                    Text(
                      "Data 2.2",
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        color: Colors.white,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ],
                )
              ],
            ),
            Row(
              children: [
                const Expanded(
                  child: Text(
                    "Image Data",
                    style: TextStyle(
                        decoration: TextDecoration.none,
                        color: Colors.white,
                        fontStyle: FontStyle.italic),
                  ),
                ),
                Row(
                  children:    [
                    // Text("Image data",
                    // style:
                    //   TextStyle(
                    //     decoration: TextDecoration.none,
                    //     color: Colors.white,
                    //     fontStyle: FontStyle.italic,
                    //   ),
                    // ),
                    // LogoAsset(),
                    Image.asset('assets/image/logo.png')
                  ],

                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class LogoAsset extends StatelessWidget {
  const LogoAsset({super.key});

  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = const AssetImage('assets/image/logo.png');
    Image image = Image(image: assetImage);
    return Container(
      child: image,
    );
  }
}
