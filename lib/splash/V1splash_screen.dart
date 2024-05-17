
import 'package:flutter/material.dart';


class SplashScreen extends StatefulWidget {
  static const routeName = 'Splash';

  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override

void initState(){
super.initState();

Future.delayed(
  const Duration(seconds: 5),
  (){
    Navigator.pushReplacementNamed(context, 'Splash');
  }
);
}

   Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Image.asset('assets/images/logo.png'), // Assurez-vous d'avoir le logo dans le dossier assets
      ),
    );
  }
}
