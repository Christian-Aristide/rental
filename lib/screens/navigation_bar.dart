import 'package:flutter/material.dart';
import 'package:rental/screens/acceuil/articleListe.dart';
import 'package:rental/screens/acceuil/home_screen.dart';
import 'package:rental/screens/infos/info_screen.dart';
import 'package:rental/screens/recherche/search_screen.dart';

class BottomNavigationBarPage extends StatefulWidget {
  @override
  _BottomNavigationBarPageState createState() => _BottomNavigationBarPageState();
}

class _BottomNavigationBarPageState extends State<BottomNavigationBarPage> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    // HomePage(),
    // SearchPage(),
    ArticleList(),
    LuxuryCarRentalPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ),
        child: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          unselectedItemColor: Colors.black,
          selectedItemColor: Colors.white,
          selectedIconTheme: IconThemeData(color: Colors.white, size: 30),
          unselectedIconTheme: IconThemeData(color: Colors.black, size: 24),
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Accueil',
            ),
            // BottomNavigationBarItem(
            //   icon: Icon(Icons.search),
            //   label: 'Recherche',
            // ),
            BottomNavigationBarItem(
              icon: Icon(Icons.info),
              label: 'infos',
            ),
          ],
          selectedLabelStyle: TextStyle(color: Colors.white),
          backgroundColor: Color(0xFFC67B17),
        ),
      ),
    );
  }
}
