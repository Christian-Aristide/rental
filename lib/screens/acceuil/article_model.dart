
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:rental/screens/acceuil/article_detail.dart';

import 'package:url_launcher/url_launcher.dart';


class ArticleList extends StatefulWidget {
  @override
  _ArticleListState createState() => _ArticleListState();
}

class _ArticleListState extends State<ArticleList> {
  final String apiUrl = "http://192.168.56.1/gstock-dclic/api/get_articles.php";

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

                // return Card(
                //   child: ListTile(
                //     onTap: () {
                //       // Afficher le bottom sheet lorsque l'utilisateur clique sur une carte d'article
                //       showModalBottomSheet(
                //         context: context,
                //         builder: (BuildContext context) {
                //           return ArticleDetailsSheet(article: article);
                //         },
                //       );
                //     },
                //     leading: imageUrl != null ? Image.network(imageUrl) : null,
                //     title: Text(article['nom_article']),
                //     subtitle: Text('Quantité: ${article['quantite']} - Prix: ${article['prix_unitaire']}'),
                //   ),
                // );

                return Container(
          padding: EdgeInsets.all(8.0),
          // color: Colors.white,
          width: double.infinity,
          height: 250,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: Colors.amber),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Lanborghini',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 10.0),

              Container(
                height: 150,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        "https://i.pinimg.com/564x/78/49/bf/7849bf28e670d5cb0d3cdb38fea9ffc3.jpg"),
                    fit:
                        BoxFit.cover, // Ajuste l'image à la taille du conteneur
                  ),
                ),
              ),
              SizedBox(height: 10.0),

              // ROW POUR LES DESCRIPTION
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      border: Border.all(),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.star, // Remplace par l'icône de ton choix
                          size: 24.0, // Taille de l'icône
                          color: Colors.yellow, // Couleur de l'icône
                        ),
                        SizedBox(
                            width: 8.0), // Espace entre l'icône et le texte
                        Text(
                          "Ton texte ici", // Le texte que tu veux afficher
                          style: TextStyle(
                            fontSize: 12.0, // Taille du texte
                            color: Colors.black, // Couleur du texte
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 3.0),
                  Container(
                    padding: EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      border: Border.all(),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.star, // Remplace par l'icône de ton choix
                          size: 24.0, // Taille de l'icône
                          color: Colors.yellow, // Couleur de l'icône
                        ),
                        SizedBox(
                            width: 8.0), // Espace entre l'icône et le texte
                        Text(
                          "Ton texte ici", // Le texte que tu veux afficher
                          style: TextStyle(
                            fontSize: 12.0, // Taille du texte
                            color: Colors.black, // Couleur du texte
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 3.0),
                  Text(
                    "120000 XOF", // Le texte que tu veux afficher
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold, // Taille du texte
                      color: Colors.black, // Couleur du texte
                    ),
                  ),
                ],
              ),
            ],
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


