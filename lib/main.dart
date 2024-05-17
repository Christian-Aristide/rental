import 'package:flutter/material.dart';
import 'package:rental/screens/navigation_bar.dart';
import 'package:rental/splash/splash_screen.dart';
// import 'package:rental/splash/V1splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: SplashScreen(),
       routes: {
      //  (context) => const SlashScreen(),
      // Onboarding (context) => const Onboarding(),
      // SplashScreen.routeName: (context) => const SplashScreen(),

     },
    );
  }
}
