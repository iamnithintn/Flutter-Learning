import 'package:flutter/material.dart';

class RowsAndCols extends StatelessWidget{
  const RowsAndCols({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Row(
            children: const <Widget>[
              Expanded(
                child: Text(
                  "Aeroplane",
                  style: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 50,
                      color: Colors.white),
                ),
              ),
              Expanded(
                child: Text(
                  "Helicopter, Helicopterrrrr",
                  style: TextStyle(
                      decoration: TextDecoration.lineThrough,
                      fontSize: 25,
                      color: Colors.white),
                ),
              ),
            ],
          ),
          Row(
            children: const <Widget>[
              Expanded(
                child: Text(
                  "Car",
                  style: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 50,
                      color: Colors.white),
                ),
              ),
              Expanded(
                child: Text(
                  "Bike, Bikeee!!",
                  style: TextStyle(
                      decoration: TextDecoration.lineThrough,
                      fontSize: 25,
                      color: Colors.white),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}