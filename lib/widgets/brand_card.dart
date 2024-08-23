
import 'package:flutter/material.dart';

class BrandCard extends StatelessWidget {
  final String brandLogo;

  const BrandCard({required this.brandLogo});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
        side: BorderSide(color: Color(0xFFC67B17)),
      ),
      child: Container(
        width: 100.0,
        height: 100.0,
        child: Image.asset(brandLogo),
      ),
    );
  }
}