import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:rental/widgets/brand_card.dart';
import 'dart:convert';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<dynamic> _categories = [];

  @override
  void initState() {
    super.initState();
    _fetchCategories();
  }

  _fetchCategories() async {
    final response = await http.get(Uri.parse('http://192.168.56.1/gstock-dclic/api/marque_vehicule.php')); 
//  final String apiUrl = "http://192.168.56.1/gstock-dclic/api/get_articles.php";

    if (response.statusCode == 200) {
      setState(() {
        _categories = json.decode(response.body);
      });
    } else {
      throw Exception('Failed to load categories');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: _categories.map((category) {
                return BrandCard(brandLogo: category['images']);
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
