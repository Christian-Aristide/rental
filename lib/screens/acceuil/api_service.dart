import 'dart:convert';
import 'package:http/http.dart' as http;
import 'article.dart';

class ApiService {
  // final String apiUrl = "http://localhost/gstock-dclic/api/get_articles.php";
  final String apiUrl = "http://192.168.43.135/gstock-dclic/api/get_articles.php";


  Future<List<Article>> fetchArticles() async {
    final response = await http.get(Uri.parse(apiUrl));

    if (response.statusCode == 200) {
      List jsonResponse = json.decode(response.body);
      return jsonResponse.map((article) => Article.fromJson(article)).toList();
    } else {
      throw Exception('Echec de rechargement des articles');
    }
  }
}

