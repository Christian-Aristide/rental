import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:rental/screens/acceuil/brand_card.dart.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final String apiUrl = "http://192.168.56.1/gstock-dclic/api/marque_vehicule.php";

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
      body: Container(
        color: Colors.amber,
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 2),
        child: FutureBuilder<List<dynamic>>(
          future: fetchArticles(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(child: CircularProgressIndicator());
            } else if (snapshot.hasError) {
              return Center(child: Text('Erreur: ${snapshot.error}'));
            } else if (!snapshot.hasData || snapshot.data.isEmpty) {
              return Center(child: Text('Aucune marque trouvée'));
            } else {
              return SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: snapshot.data.map<Widget>((article) {
                    var imageUrl = article['images'] != null
                        ? Uri.encodeFull(article['images'])
                        : '';
                    var brandName = article['libelle_categorie'];

                    return BrandCard(brandLogo: imageUrl, brandName: brandName);
                  }).toList(),
                ),
              );
            }
          },
        ),
      ),
    );
  }
}
