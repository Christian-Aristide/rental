import 'package:flutter/material.dart';

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
              'assets/logo.png',
              width: 100.0,
            ),
          ),
        ),
      ),
      backgroundColor: Color(0xFFF8F2F2),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          Text(
            'Véhicule populaire',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 16.0),
          VehicleCard(
            brand: 'Rolls-Royce',
            model: 'Phantom',
            image: 'assets/rolls_royce_phantom.jpeg',
            isAutomatic: true,
            isElectric: false,
            price: '1,000,000 \$',
          ),
          VehicleCard(
            brand: 'Ferrari',
            model: '458 Italia',
            image: 'assets/ferrari_458_italia.jpeg',
            isAutomatic: true,
            isElectric: false,
            price: '500,000 \$',
          ),
          VehicleCard(
            brand: 'Lamborghini',
            model: 'Aventador',
            image: 'assets/lamborghini_aventador.jpeg',
            isAutomatic: true,
            isElectric: false,
            price: '700,000 \$',
          ),
          // Ajoutez d'autres cartes de véhicules ici
        ],
      ),
    );
  }
}

class VehicleCard extends StatelessWidget {
  final String brand;
  final String model;
  final String image;
  final bool isAutomatic;
  final bool isElectric;
  final String price;

  const VehicleCard({
    required this.brand,
    required this.model,
    required this.image,
    required this.isAutomatic,
    required this.isElectric,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () {
          // Action à effectuer lors du clic sur la carte
          // Ouvrir la pop-up de détails du véhicule
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              brand,
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 8.0),
            Image.asset(
              image,
              height: 200.0,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 8.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InfoCard(
                  icon: Icons.settings,
                  text: isAutomatic ? 'Automatique' : 'Manuelle',
                ),
                InfoCard(
                  icon: Icons.battery_charging_full,
                  text: isElectric ? 'Électrique' : 'Non électrique',
                ),
                InfoCard(
                  icon: Icons.attach_money,
                  text: price,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class InfoCard extends StatelessWidget {
  final IconData icon;
  final String text;

  const InfoCard({
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Icon(icon),
            SizedBox(height: 4.0),
            Text(text),
          ],
        ),
      ),
    );
  }
}