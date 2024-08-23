import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:url_launcher/url_launcher.dart';

class Informations extends StatelessWidget {
  // final dynamic article;
  // Informations({required this.article});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 20), // Augmentation des marges intérieures
        child: Container(
          // height: MediaQuery.of(context).size.height * 0.8,
          padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // LES CARDS DE DETAIL
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                    decoration: BoxDecoration(
                        border: Border.all(color: Color(0xFFC67B17)),
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      children: [
                        Text(
                          "Matricule",
                          style: TextStyle(
                            fontSize: 12.0,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 8.0),
                        Text(
                          "['matricule']",
                          style: TextStyle(
                              fontSize: 14.0,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 20.0),
                  Container(
                    // padding: EdgeInsets.all(10),
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),

                    decoration: BoxDecoration(
                        border: Border.all(color: Color(0xFFC67B17)),
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      children: [
                        Text(
                          "Année",
                          style: TextStyle(
                            fontSize: 12.0,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 8.0),
                        Text(
                          "article['annee']",
                          style: TextStyle(
                              fontSize: 14.0,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 20.0),
                  Container(
                    // padding: EdgeInsets.all(10),
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),

                    decoration: BoxDecoration(
                        border: Border.all(color: Color(0xFFC67B17)),
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      children: [
                        Text(
                          "Rapidité",
                          style: TextStyle(
                            fontSize: 12.0,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 8.0),
                        Text(
                          // article['matricule'],
                          "fdsfdsfsf",
                          style: TextStyle(
                              fontSize: 14.0,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              SizedBox(height: 16.0),

              Text(
                "Informations de la voiture",
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                textAlign: TextAlign.start,
              ),
              SizedBox(height: 8.0),

              // LES INFORMATIONS
              Column(
                children: [
                  Row(
                    children: [
                      Icon(Icons.sunny, size: 20.0, color: Color(0xFFC67B17)),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        "Climatisation",
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(width: 8),
                      Container(
                        decoration: BoxDecoration(
                          color: Color(0xFFC67B17), // Couleur de fond
                          borderRadius:
                              BorderRadius.circular(10.0), // Arrondi des bords
                        ),
                        padding: EdgeInsets.symmetric(
                            vertical: 4.0, horizontal: 8.0), // Marge intérieure
                        child: Text(
                          "sdfsdfdsqfsdqfsqf",
                          style: TextStyle(
                            fontSize: 14.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              SizedBox(
                height: 8,
              ),

              Column(
                children: [
                  Row(
                    children: [
                      Icon(Icons.person, size: 20.0, color: Color(0xFFC67B17)),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        "Nombre de places",
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(width: 8),
                      Container(
                        decoration: BoxDecoration(
                          color: Color(0xFFC67B17), // Couleur de fond
                          borderRadius:
                              BorderRadius.circular(10.0), // Arrondi des bords
                        ),
                        padding: EdgeInsets.symmetric(
                            vertical: 4.0, horizontal: 8.0), // Marge intérieure
                        child: Text(
                          "article['passager']",
                          style: TextStyle(
                            fontSize: 14.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              SizedBox(
                height: 8,
              ),

              Column(
                children: [
                  Row(
                    children: [
                      Icon(Icons.settings,
                          size: 20.0, color: Color(0xFFC67B17)),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        "Boite",
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(width: 8),
                      Container(
                        decoration: BoxDecoration(
                          color: Color(0xFFC67B17), // Couleur de fond
                          borderRadius:
                              BorderRadius.circular(10.0), // Arrondi des bords
                        ),
                        padding: EdgeInsets.symmetric(
                            vertical: 4.0, horizontal: 8.0), // Marge intérieure
                        child: Text(
                          "article['boite']",
                          style: TextStyle(
                            fontSize: 14.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              SizedBox(
                height: 8,
              ),

              Column(
                children: [
                  Row(
                    children: [
                      Icon(Icons.door_front_door,
                          size: 20.0, color: Color(0xFFC67B17)),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        "Nombre de porte",
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(width: 8),
                      Container(
                        decoration: BoxDecoration(
                          color: Color(0xFFC67B17), // Couleur de fond
                          borderRadius:
                              BorderRadius.circular(10.0), // Arrondi des bords
                        ),
                        padding: EdgeInsets.symmetric(
                            vertical: 4.0, horizontal: 8.0), // Marge intérieure
                        child: Text(
                          "article['porte']",
                          style: TextStyle(
                            fontSize: 14.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              SizedBox(
                height: 12,
              ),

              Column(
                children: [
                  Row(
                    children: [
                      Icon(Icons.price_change,
                          size: 30.0, color: Color(0xFFC67B17)),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        "Prix journalier",
                        style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(width: 8),
                      Container(
                        decoration: BoxDecoration(
                          color: Color(0xFFC67B17), // Couleur de fond
                          borderRadius:
                              BorderRadius.circular(10.0), // Arrondi des bords
                        ),
                        padding: EdgeInsets.symmetric(
                            vertical: 4.0, horizontal: 8.0), // Marge intérieure
                        child: Text(
                          "fsfersfsdfsv",
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              SizedBox(height: 30.0),
              ElevatedButton(
                onPressed: () {
                  // Action à effectuer lors du clic sur le bouton
                  // Par exemple, rediriger vers une autre page ou effectuer une action
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFC67B17),
                  padding: EdgeInsets.all(20),
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(10.0), // Arrondi des bords
                  ),
                ),
                child: Text(
                  'Réserver',
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white, // Couleur du texte du bouton
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
