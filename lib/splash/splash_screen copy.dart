import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/scheduler.dart' show timeDilation;

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    startTimer();
  }

  void startTimer() {
    timeDilation = 1.0;
    Future.delayed(Duration(seconds: 5), () {
      Navigator.pushReplacementNamed(context, '/homePage');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Image.asset(
          'assets/images/logo.png', // Remplace 'assets/logo.png' par le chemin vers ton logo
          width: 200,
          height: 200,
        ),
      ),
    );
  }
}