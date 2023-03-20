import 'package:flutter/material.dart';
import 'date-time picker.dart';
// import 'formarting date and time.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Date And Time",
    theme: ThemeData(
      primarySwatch: Colors.indigo,
    ),

    home: const LearningDateAndTimePicker(),
  ));
}
