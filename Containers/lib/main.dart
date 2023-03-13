// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
//
// void main()=> runApp(const MyApp());
//
//
// class MyApp extends StatelessWidget{
//   const MyApp({super.key});
//
//
//   @override
//   Widget build(BuildContext context){
//     return const MaterialApp(
//       title: "Flutter day 1",
//       debugShowCheckedModeBanner: false,
//       home: MyHomePage(),
//     );
//   }
// }
//
// class MyHomePage extends StatelessWidget{
//   const MyHomePage({super.key});
//
//   @override
//   Widget build (BuildContext context){
//     return Scaffold(
//
//       appBar: AppBar(
//
//         actions: [
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: const [
//               Icon(Icons.access_alarms_outlined),
//               Icon(Icons.access_time_sharp)
//             ],
//           )
//         ],
//         // title: Icon(Icon.),
//
//
//       ),
//       body: Center(
//         child: Container(
//           width: 200,
//           height: 200,
//           color: Colors.grey,
//
//           child:  Center(
//             child: Text('Hello Native Minds',
//               style: GoogleFonts.lato(
//                 textStyle: const TextStyle(color: Colors.purple, letterSpacing: 0.3)
//               ),
//             ),
//           ),
//         ),
//
//       ),
//     );
//   }
// }


import 'package:containers/home.dart';
// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


// void main()=> runApp(const Home());

void main(){
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Container stuff",
    home: Home(),
  )
  );
}