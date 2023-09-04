import 'package:flutter/material.dart';

import 'main.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 3),
      () => Navigator.pushReplacement(
        context,
        PageRouteBuilder(
          opaque: false, // set to false to make route transparent
          pageBuilder: (BuildContext context, _, __) => MyApp(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            // You can define your custom transition here, if needed.
            // For now, I'm using a simple fade transition.
            return FadeTransition(opacity: animation, child: child);
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          'assets/berki_splash.png',
        ),
      ),
    );
  }
}
