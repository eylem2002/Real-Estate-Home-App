
import 'package:flutter/material.dart';
import 'package:new_batic/firebase_options.dart';
import 'package:new_batic/view/screen/Sign%20in/up/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';





Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
 await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
// void main() {
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