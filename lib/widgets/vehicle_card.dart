import 'package:flutter/material.dart';

class VehicleCard extends StatelessWidget {
  final String brand;
  final String model;
  final String image;
  final bool automatic;
  final bool electric;
  final String price;

  const VehicleCard({required this.brand, required this.model, required this.image, required this.automatic, required this.electric, required this.price, required Null Function() onTap});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: ListTile(
        leading: Image.asset(
          image,
          width: 80.0,
          height: 80.0,
          fit: BoxFit.cover,
        ),
        title: Text(
          '$brand $model',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Row(
          children: [
            Icon(
              Icons.autorenew,
              color: automatic ? Colors.green : Colors.red,
            ),
            SizedBox(width: 8.0),
            Icon(
              Icons.battery_full,
              color: electric ? Colors.green : Colors.red,
            ),
            SizedBox(width: 8.0),
            Text(price),
          ],
        ),
        onTap: () {
          // Ajoutez ici la logique pour afficher les détails du véhicule
        },
      ),
    );
  }
}
