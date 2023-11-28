import 'package:flutter/material.dart';
import 'package:new_batic/view/screen/signin.dart';
import 'package:new_batic/view/screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application. ////yap
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       debugShowCheckedModeBanner: false,
      theme: ThemeData(


        primarySwatch: Colors.blueGrey,
      ),
      home: const LogIN(),


    );
  ////here is the final one//
  }

}
