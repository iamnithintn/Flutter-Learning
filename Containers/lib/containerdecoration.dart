import 'package:flutter/material.dart';

class ContainerDecor extends StatelessWidget {
  const ContainerDecor({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Container",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Center(
          child: Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(
                color: Colors.blue.shade500,
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.elliptical(32, 23),
                    bottomRight: Radius.elliptical(20, 34)),
                border: Border.all(width: 5, color: Colors.purple),
                boxShadow: const [
                  BoxShadow(
                      blurRadius: 10, spreadRadius: 7, color: Colors.orange)
                ],

              // shape: BoxShape.circle              --> Either this or boxradius cant have both

            ),
          ),
        ));
  }
}
