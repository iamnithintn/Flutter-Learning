import 'package:flutter/material.dart';
import 'package:rowsandcolumns/practice.dart';
import 'package:rowsandcolumns/row.dart';
import 'package:rowsandcolumns/rowsandcols.dart';
import 'package:rowsandcolumns/ytrowsandcolumns.dart';
import 'column.dart';

void main() {
  runApp( const MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Rows and Columns",
    home: PracticeRowsAndColumns(),
  )
  );
}