import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:url_launcher/url_launcher.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gestion des Articles',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ArticleList(),
    );
  }
}

class ArticleList extends StatefulWidget {
  @override
  _ArticleListState createState() => _ArticleListState();
}

class _ArticleListState extends State<ArticleList> {
  final String apiUrl = "http://192.168.43.135/gstock-dclic/api/get_articles.php";

  Future<List<dynamic>> fetchArticles() async {
    try {
      var result = await http.get(Uri.parse(apiUrl));
      return json.decode(result.body);
    } catch (e) {
      print('Erreur lors de la récupération des données: $e');
      return [];
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Liste des Articles'),
      ),
      body: FutureBuilder<List<dynamic>>(
        future: fetchArticles(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Erreur: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data.isEmpty) {
            return Center(child: Text('Aucun article trouvé'));
          } else {
            return ListView.builder(
              itemCount: snapshot.data.length,
              itemBuilder: (BuildContext context, int index) {
                var article = snapshot.data[index];
                var imageUrl = article['images'] != null ? Uri.encodeFull(article['images']) : null;

                return Card(
                  child: ListTile(
                    onTap: () {
                      // Afficher le bottom sheet lorsque l'utilisateur clique sur une carte d'article
                      showModalBottomSheet(
                        context: context,
                        builder: (BuildContext context) {
                          return ArticleDetailsSheet(article: article);
                        },
                      );
                    },
                    leading: imageUrl != null ? Image.network(imageUrl) : null,
                    title: Text(article['nom_article']),
                    subtitle: Text('Quantité: ${article['quantite']} - Prix: ${article['prix_unitaire']}'),
                  ),
                );
              },
            );
          }
        },
      ),
    );
  }
}



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
                launch('tel://0123456789');
              },
              child: Text('Réserver'),
            ),
          ],
        ),
      ),
    );
  }
}