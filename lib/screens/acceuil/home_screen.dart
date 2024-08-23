import 'package:flutter/material.dart';
import 'package:rental/widgets/brand_card.dart';
import 'package:rental/widgets/vehicle_card.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      backgroundColor: Color(0xFFF8F2F2),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                SingleChildScrollView(
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}
