import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'package:luxury_rental_car/home_screen.dart';
// import 'package:rental/screens/acceuil/home_screen.dart';
import 'package:rental/screens/navigation_bar.dart';
import 'package:rental/screens/recherche/search_screen.dart'; // Importez le fichier home_screen.dart que nous allons créer ensuite

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Ajoutez une temporisation pour afficher le Splash Screen pendant 5 secondes
    Future.delayed(Duration(seconds: 5), () {
      // Naviguez vers la page d'accueil une fois que le temps est écoulé
      Navigator.pushReplacement(
        context,
        // MaterialPageRoute(builder: (context) => BottomNavigationBarPage()),
        MaterialPageRoute(builder: (context) => EnlargeStrategyZoomDemo()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    // Masquez la barre de statut pendant l'affichage du Splash Screen
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
    
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

  @override
  void dispose() {
    // Réactivez la barre de statut lorsque le Splash Screen est fermé
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: SystemUiOverlay.values);
    super.dispose();
  }
}
