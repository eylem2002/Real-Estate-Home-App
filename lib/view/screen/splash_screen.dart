import 'dart:async';
import 'package:flutter/material.dart';
import 'package:new_batic/view/screen/signin.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(
      const Duration(seconds: 3),
      () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const LogIn(),
          )),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widthNHeight0(context, 1),
      height: widthNHeight0(context, 0),
      child: Image.asset(fit: BoxFit.cover, 'assets/images/png_pic/batik_splash.png'),
    );
  }
}
