import 'package:flutter/material.dart';

class VehicleDetailsPopup extends StatelessWidget {
  final String brand;
  final String series;
  final String image;

  const VehicleDetailsPopup({
    required Key key,
    required this.brand,
    required this.series,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '$brand $series',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 16.0),
          Image.asset(
            image,
            width: double.infinity,
            height: 200.0,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 16.0),
          Text(
            'Spécifications de la voiture',
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildSpecificationCard('Énergie', 'Essence'),
              _buildSpecificationCard('Année de sortie', '2023'),
              _buildSpecificationCard('Rapidité', '300 km/h'),
            ],
          ),
          SizedBox(height: 16.0),
          Text(
            'Informations de la voiture',
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildInfoRow('Climatisation', 'Oui'),
              _buildInfoRow('Nombre de passagers', '4'),
              _buildInfoRow('Kilométrage', '10,000 km'),
              _buildInfoRow('Automatique', 'Oui'),
              _buildInfoRow('Nombre de portes', '2'),
            ],
          ),
          SizedBox(height: 16.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Prix : 500,000\$',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  // Logique pour ouvrir l'application de contact avec le numéro de l'entreprise
                },
                child: Text('Réserver'),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildSpecificationCard(String title, String value) {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 12.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 4.0),
            Text(
              value,
              style: TextStyle(
                fontSize: 12.0,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoRow(String title, String value) {
    return Row(
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 12.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(width: 4.0),
        Text(
          value,
          style: TextStyle(
            fontSize: 12.0,
          ),
        ),
      ],
    );
  }
}