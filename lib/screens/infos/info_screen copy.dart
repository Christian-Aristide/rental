import 'package:flutter/material.dart';

class InfosPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Grande image d'un véhicule de luxe
            Image.asset(
              'assets/vehicule/peugeot.jpeg',
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16.0),
            // Section avec le logo, le nom et le slogan de l'entreprise
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Logo de l'entreprise
                  Image.asset(
                    'assets/images/logo.png',
                    width: 120.0,
                  ),
                  SizedBox(height: 16.0),
                  // Nom de l'entreprise
                  Text(
                    'Nom de l\'entreprise',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  // Slogan de l'entreprise
                  Text(
                    'Slogan de l\'entreprise',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ],
              ),
            ),
            // Ligne avec le nombre de clients et le nombre de véhicules
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Nombre de clients chaque mois
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Nombre de clients chaque mois',
                        style: TextStyle(
                          fontSize: 12.0,
                        ),
                      ),
                      Text(
                        'XXX',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  // Nombre de véhicules de luxe en gestion
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Nombre de véhicules de luxe en gestion',
                        style: TextStyle(
                          fontSize: 16.0,
                        ),
                      ),
                      Text(
                        'XXX',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // Informations sur l'entreprise
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Informations sur l\'entreprise',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  // Type de véhicules proposés par l'entreprise
                  Text('- Type de véhicules proposés par l\'entreprise'),
                  // Localisation de l'entreprise
                  Text('- Localisation de l\'entreprise'),
                  // Grille tarifaire de la location des véhicules
                  Text('- Grille tarifaire de la location des véhicules'),
                ],
              ),
            ),
            // Conditions de location
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Conditions de location',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  // Texte descriptif des conditions de location
                  Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
