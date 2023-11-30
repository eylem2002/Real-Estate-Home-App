import 'package:flutter/material.dart';
import 'package:new_batic/view/screen/Search_Page.dart';
import 'package:new_batic/view/screen/splash_screen.dart';

import 'view/screen/search_bar_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}