

import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:url_launcher/url_launcher.dart';

class ArticleDetailsSheet extends StatelessWidget {
  final dynamic article;
  ArticleDetailsSheet({required this.article});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: MediaQuery.of(context).size.height * 0.8, // Occuper 80% de la hauteur de l'écran
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Détails de l\'article',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 16.0),
            if (article['images'] != null)
              Image.network(
                Uri.encodeFull(article['images']),
                height: 200.0, // Taille de l'image
                fit: BoxFit.cover, // Redimensionne l'image pour couvrir la zone
              ),
            SizedBox(height: 16.0),
            ListTile(
              title: Text('Nom: ${article['nom_article']}'),
              subtitle: Text('Quantité: ${article['quantite']}'),
            ),
            ListTile(
              title: Text('Prix unitaire: ${article['prix_unitaire']}'),
              subtitle: Text('Date de fabrication: ${article['date_fabrication']}'),
            ),
            ListTile(
              title: Text('Date d\'expiration: ${article['date_expiration']}'),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // Rediriger vers l'application téléphone avec un numéro déjà composé
                // Remplace le '0123456789' par le numéro de téléphone souhaité
                // launch('tel://0123456789');
              },
              child: Text('Réserver'),
            ),
          ],
        ),
      ),
    );
  }
}