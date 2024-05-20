import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Meilleure marque',
//       home: HomePage(),
//     );
//   }
// }

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Meilleure marque'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset('assets/bmw_logo.png'),
              Image.asset('assets/rolls_royce_logo.png'),
              Image.asset('assets/ferrari_logo.png'),
              Image.asset('assets/bentley_logo.png'),
            ],
          ),
          SizedBox(height: 20),
          Text(
            'Véhicule populaire',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Image.asset('assets/vehicule/aston_martin.jpeg'),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.settings),
              Text('Automatique'),
              SizedBox(width: 10),
              Icon(Icons.battery_charging_full),
              Text('Electrique'),
            ],
          ),
          Text(
            '150XOF/J',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18),
          ),
          SizedBox(height: 20),
          Image.asset('assets/vehicule/aston_martin.jpeg'),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.settings),
              Text('Automatique'),
              SizedBox(width: 10),
              Icon(Icons.battery_charging_full),
              Text('Electrique'),
            ],
          ),
          Text(
            '80XOF/J',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18),
          ),
        ],
      ),
    );
  }
}