import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:new_batic/core/services/EnterSevices.dart';
import 'package:new_batic/view/screen/Sign%20in/up/signin.dart';
import 'package:new_batic/view/widget/BottomNavBar.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(
      const Duration(seconds: 5),
      () => (FirebaseAuth.instance.currentUser != null)  // &&FirebaseAuth.instance.currentUser!.emailVerified
          ? Navigator.of(context).pushReplacementNamed("search_home_bar")
          // Navigator.push(
          //     // &&FirebaseAuth.instance.currentUser!.emailVerified
          //     context,
          //     MaterialPageRoute(
          //       builder: (context) => const CustomeBottomNavBar(),
          //     ))
          : Navigator.of(context).pushReplacementNamed("signin")
          // Navigator.pushReplacement(
          //     context,
          //     MaterialPageRoute(
          //       builder: (context) => const LogIn(),
          //     )),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFFCDD9F4), Color(0xFFF0F2F6),Color(0xFFEBEEF6),Color(0xFFEFF1F6),Color(0xFFCDD9F4),Color(0xFFF0F2F6)],
          ),
        ),
        child: Center(
          child: Image.asset(
            'assets/images/png_pic/batic_text.png',
            width: 300, 
            height: 300,
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
