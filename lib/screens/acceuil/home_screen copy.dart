import 'package:flutter/material.dart';
import 'package:rental/widgets/brand_card.dart';
import 'package:rental/widgets/vehicle_card.dart';

class HomePage extends StatelessWidget {
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
              'assets/images/logo.png',
              width: 80.0,
            ),
          ),
        ),
      ),
      backgroundColor: Color(0xFFF8F2F2),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Meilleure marque',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 16.0),
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
          SizedBox(height: 32.0), // Ajoutez un espacement entre les sections
          Text(
            'Véhicules populaires',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 16.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              VehicleCard(
                brand: 'Rolls-Royce', 
                model: 'Phantom', 
                image: 'assets/vehicule/aston_martin.jpeg', 
                automatic: true, 
                electric: false, 
                price: 'À partir de \$500/jour', onTap: () {  },),
              VehicleCard(
                brand: 'Ferrari', 
                model: '488 GTB', 
                image: 'assets/vehicule/ferrari.jpeg', 
                automatic: true, 
                electric: false, 
                price: 'À partir de \$700/jour', onTap: () {  },),
              VehicleCard(
                brand: 'Lamborghini', 
                model: 'Huracan', 
                image: 'assets/vehicule/peugeot.jpeg', 
                automatic: true, 
                electric: false, 
                price: 'À partir de \$600/jour', onTap: () {  },),
              // Ajoutez d'autres cartes de véhicules populaires ici
            ],
          ),
        ],
      ),
    );
  }
}
