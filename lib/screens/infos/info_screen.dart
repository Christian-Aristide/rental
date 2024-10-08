import 'package:flutter/material.dart';
import 'package:rental/widgets/carousel.dart';

class LuxuryCarRentalPage extends StatefulWidget {
  @override
  _LuxuryCarRentalPageState createState() => _LuxuryCarRentalPageState();
}

class _LuxuryCarRentalPageState extends State<LuxuryCarRentalPage> {
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            slide(),
            // LOGO SLOGAN avec Padding
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 5), // Ajuste la valeur de padding selon tes besoins
              child: Row(
                children: [
                  Image.asset(
                    'assets/images/logo-r.png', // Chemin de ton image
                    width: 100, // Ajuste la taille de l'image selon tes besoins
                    height: 80,
                  ),
                  SizedBox(width: 5), // Espacement entre l'image et le texte
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'LUX',
                          style: TextStyle(
                              color: Color(0xFFC67B17),
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text: 'URY ',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text: 'REN',
                          style: TextStyle(
                              color: Color(0xFFC67B17),
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text: 'TAL ',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text: 'CAR',
                          style: TextStyle(
                              color: Color(0xFFC67B17),
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text: ' ',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(5),
              child: Text(
                "Offrez-vous une expérience de conduite incomparable avec nos véhicules d'exception.",
                style: TextStyle(fontSize: 14, color: Colors.black),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 9.0,),

            Padding(
              padding: EdgeInsets.all(10),
            child: Text("Je m'appelle Elvis", 
            style: TextStyle(
              color: Colors.green,
              fontSize: 20
            ) ,),
            ),

            SizedBox(
              height: 10,
            ),
            // SECTION 2
            Padding(
              // padding: const EdgeInsets.all(8.0),
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                    decoration: BoxDecoration(
                        border: Border.all(color: Color(0xFFC67B17)),
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      children: [
                        Text(
                          "+200",
                          style: TextStyle(
                              fontSize: 14.0,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 8.0),
                        Text(
                          "Clients chaque mois",
                          style: TextStyle(
                            fontSize: 10.0,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 10.0),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                    decoration: BoxDecoration(
                        border: Border.all(color: Color(0xFFC67B17)),
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment
                          .center, // Centrer horizontalement les éléments
                      children: [
                        Text(
                          "+500",
                          style: TextStyle(
                              fontSize: 14.0,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 8.0),
                        Text(
                          "Véhicules de luxe en gestion",
                          style: TextStyle(
                            fontSize: 12.0,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(Icons.car_rental,
                          size: 20.0, color: Color(0xFFC67B17)),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        "Véhicules proposés",
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
                          "véhicule de luxe",
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
            ),
            SizedBox(
              height: 8,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(Icons.location_city,
                          size: 20.0, color: Color(0xFFC67B17)),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        "Localisation",
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
                          "Cocody Riviera 3",
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
            ),
            SizedBox(
              height: 8,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(Icons.price_change_rounded,
                          size: 20.0, color: Color(0xFFC67B17)),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        "Tarification",
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
                          "50XOF - 200XOF/J",
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
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(Icons.email_outlined,
                          size: 20.0, color: Color(0xFFC67B17)),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        "Email",
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
                          "kouassichristian45@gmail.com",
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
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(Icons.phone_android_rounded,
                          size: 20.0, color: Color(0xFFC67B17)),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        "Contact",
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
                          "(+225) 0102185968",
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
            ),
            SizedBox(height: 15.0),
            // CONDITION
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Conditions de location",
                  style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.start,
                ),
                SizedBox(height: 5.0),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                  child: Text(
                    "Pour louer un véhicule chez LocationAuto, les clients doivent avoir au moins 21 ans, être titulaires d'un permis de conduire valide et présenter une carte d'identité en cours de validité",
                    style: TextStyle(
                      fontSize: 14.0,
                      color: Colors.black87,
                    ),
                  ),
                ),
                SizedBox(height: 20.0),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
