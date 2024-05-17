import 'package:flutter/material.dart';

class VehicleDetailsPopup extends StatelessWidget {
  final String brand;
  final String model;
  final String image;
  final bool isAutomatic;
  final bool isElectric;
  final String price;

  const VehicleDetailsPopup({
    required this.brand,
    required this.model,
    required this.image,
    required this.isAutomatic,
    required this.isElectric,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            '$brand $model',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 16.0),
          Image.asset(
            image,
            height: 200.0,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 16.0),
          Text(
            'Automatic: ${isAutomatic ? 'Yes' : 'No'}',
            style: TextStyle(fontSize: 18.0),
          ),
          SizedBox(height: 8.0),
          Text(
            'Electric: ${isElectric ? 'Yes' : 'No'}',
            style: TextStyle(fontSize: 18.0),
          ),
          SizedBox(height: 8.0),
          Text(
            'Price: $price',
            style: TextStyle(fontSize: 18.0),
          ),
          SizedBox(height: 16.0),
          ElevatedButton(
            onPressed: () {
              // Action to perform when the button is pressed
            },
            child: Text('Buy Now'),
          ),
        ],
      ),
    );
  }
}