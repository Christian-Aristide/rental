import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:rental/screens/acceuil/article_detail.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:rental/widgets/brand_card.dart'; // Assurez-vous d'importer les widgets nécessaires
import 'package:rental/widgets/vehicle_card.dart'; // Assurez-vous d'importer les widgets nécessaires

class ArticleList extends StatefulWidget {
  @override
  _ArticleListState createState() => _ArticleListState();
}

class _ArticleListState extends State<ArticleList> {
  final String apiUrl = "http://192.168.43.135/luxrencar/api/get_articles.php";

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
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(56.0),
        child: Container(
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: Colors.grey,
                width: 1.0,
              ),
            ),
          ),
          child: AppBar(
            backgroundColor: Colors.white,
            elevation: 0.0,
            centerTitle: true,
            title: Image.asset(
              'assets/images/logo-r.png',
              width: 80.0,
            ),
          ),
        ),
      ),
      body: FutureBuilder<List<dynamic>>(
        future: fetchArticles(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Erreur: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data.isEmpty) {
            return Center(child: Text('Aucun véhicule trouvé'));
          } else {
            return ListView.builder(
              itemCount: snapshot.data.length + 3, // Adjusted item count
              itemBuilder: (BuildContext context, int index) {
                if (index == 0) {
                  return Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Text(
                      'Marque proposée',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  );
                } else if (index == 1) {
                  return HomePage(); // Insert HomePage widget
                } else if (index == 2) {
                  return Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Text(
                      'Véhicules proposés',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  );
                } else {
                  var article = snapshot.data[index - 3];
                  var imageUrl = article['images'] != null
                      ? Uri.encodeFull(article['images'])
                      : null;

                  return GestureDetector(
                    onTap: () {
                      showModalBottomSheet(
                        context: context,
                        builder: (BuildContext context) {
                          return ArticleDetailsSheet(article: article);
                        },
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 6),
                      padding: EdgeInsets.all(8.0),
                      width: double.infinity,
                      height: 250,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Color(0xFFC67B17)),
                        color: Colors.white,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            article['nom_article'],
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
                                  imageUrl != null
                                      ? imageUrl
                                      : "https://i.pinimg.com/564x/78/49/bf/7849bf28e670d5cb0d3cdb38fea9ffc3.jpg",
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(height: 10.0),
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
                                      Icons.settings,
                                      size: 20.0,
                                      color: Color(0xFFC67B17),
                                    ),
                                    SizedBox(width: 8.0),
                                    Text(
                                      article['boite'],
                                      style: TextStyle(
                                        fontSize: 12.0,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(width: 20.0),
                              Container(
                                padding: EdgeInsets.all(6),
                                decoration: BoxDecoration(
                                  border: Border.all(),
                                ),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.calendar_month,
                                      size: 20.0,
                                      color: Color(0xFFC67B17),
                                    ),
                                    SizedBox(width: 8.0),
                                    Text(
                                      article['annee'],
                                      style: TextStyle(
                                        fontSize: 12.0,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(width: 3.0),
                              Container(
                                padding: EdgeInsets.all(6),
                                child: Row(
                                  children: [
                                    Text(
                                      article['prix_unitaire'],
                                      style: TextStyle(
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                    ),
                                    SizedBox(width: 8.0),
                                    Text(
                                      "FCFA",
                                      style: TextStyle(
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                }
              },
            );
          }
        },
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            BrandCard(brandLogo: 'assets/marque_vehicule/rolls_royce_logo.jpeg'),
            BrandCard(brandLogo: 'assets/marque_vehicule/ferrari_logo.jpeg'),
            BrandCard(brandLogo: 'assets/marque_vehicule/lamborghini_logo.jpeg'),
            BrandCard(brandLogo: 'assets/marque_vehicule/bentley_logo.jpeg'),
            BrandCard(brandLogo: 'assets/marque_vehicule/aston_martin_logo.jpeg'),
            BrandCard(brandLogo: 'assets/marque_vehicule/bugatti_logo.jpeg'),
            BrandCard(brandLogo: 'assets/marque_vehicule/lexus_logo.jpeg'),
            BrandCard(brandLogo: 'assets/marque_vehicule/maserati_logo.jpeg'),
            BrandCard(brandLogo: 'assets/marque_vehicule/porsche_logo.jpeg'),
            // Ajoutez d'autres cartes de marque ici
          ],
        ),
      ),
    );
  }
}
