
import 'package:flutter/material.dart';
import 'package:new_batic/firebase_options.dart';
import 'package:new_batic/view/screen/Sign%20in/up/signin.dart';
import 'package:new_batic/view/screen/Sign%20in/up/signup_screen.dart';
import 'package:new_batic/view/screen/Sign%20in/up/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:new_batic/view/widget/BottomNavBar.dart';





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
    return  MaterialApp(
      debugShowCheckedModeBanner: false,

      home: SplashScreen(),
      routes: {
        "signin":(context)=>LogIn(),
        "signup":(context)=>SingUpScreen(),
        "search_home_bar":(context) => CustomeBottomNavBar(),

      },
    );
  }
}