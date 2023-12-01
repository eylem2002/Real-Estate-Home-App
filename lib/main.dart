import 'package:flutter/material.dart';
import 'package:new_batic/view/screen/search_bar_screen.dart';
import 'package:new_batic/view/screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SearchBarScreen(),
    );
  }
}