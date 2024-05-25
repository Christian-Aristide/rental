import 'package:flutter/material.dart';

class BrandCard extends StatelessWidget {
  final String brandLogo;
  final String brandName;

  const BrandCard({required this.brandLogo, required this.brandName});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
        side: BorderSide(color: Color(0xFFC67B17)),
      ),
      child: Container(
        width: 120.0,  // Largeur fixe
        height: 180.0, // Hauteur fixe
        child: Column(
          children: [
            Container(
              width: 120.0,
              height: 120.0,
              child: Image.network(brandLogo, fit: BoxFit.cover),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                brandName,
                style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
