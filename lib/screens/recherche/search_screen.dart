import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';


class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  TextEditingController _searchController = TextEditingController();
  List _searchResults = [];
  bool _isLoading = false;
  String _errorMessage = '';

  Future<void> _searchArticles(String query) async {
    setState(() {
      _isLoading = true;
      _errorMessage = '';
    });

    final url = Uri.parse('http://192.168.36.118/luxrencar/api/search_articles.php?q=$query');
    try {
      final response = await http.get(url);

      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        if (data is List) {
          setState(() {
            _searchResults = data;
          });
        } else {
          setState(() {
            _searchResults = [];
            _errorMessage = 'aucune réponse trouvée';
          });
        }
      } else {
        setState(() {
          _errorMessage = 'Erreur serveur: ${response.statusCode}';
        });
      }
    } catch (e) {
      setState(() {
        _errorMessage = 'Erreur de connexion: $e';
      });
    } finally {
      setState(() {
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recherche d\'articles'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _searchController,
              decoration: InputDecoration(
                labelText: 'Recherche',
                suffixIcon: IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {
                    _searchArticles(_searchController.text);
                  },
                ),
              ),
              onSubmitted: _searchArticles,
            ),
            _isLoading ? CircularProgressIndicator() : SizedBox.shrink(),
            Expanded(
              child: _errorMessage.isNotEmpty
                  ? Center(child: Text(_errorMessage))
                  : ListView.builder(
                      itemCount: _searchResults.length,
                      itemBuilder: (context, index) {
                        final article = _searchResults[index];
                        return ListTile(
                          title: Text(article['nom_article']),
                          subtitle: Text('Quantité: ${article['quantite']}, Prix: ${article['prix_unitaire']}'),
                        );
                      },
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
