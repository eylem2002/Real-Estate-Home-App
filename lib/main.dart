import 'package:flutter/material.dart';
import 'package:new_batic/view/screen/signin.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
    return MaterialApp(
       debugShowCheckedModeBanner: false,
      theme: ThemeData(


        primarySwatch: Colors.blueGrey,
      ),
      home: const LogIN(),
=======
    return const MaterialApp(
      debugShowCheckedModeBanner:false ,
      home: LogIN(),
>>>>>>> ibrahem


    );
  
  }
}
