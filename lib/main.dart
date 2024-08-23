import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:rental/screens/acceuil/articleListe.dart';
// import 'package:rental/screens/acceuil/home2.dart';
import 'package:rental/screens/acceuil/lycoris_model.dart';
import 'package:rental/screens/infos/info_screen.dart';
import 'package:rental/screens/recherche/search_screen.dart';
import 'package:rental/splash/splash_screen.dart';
import 'package:rental/widgets/carousel.dart';

import 'package:url_launcher/url_launcher.dart';

import 'screens/acceuil/home_screen.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Gestion des Articles',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
    );
  }
}
