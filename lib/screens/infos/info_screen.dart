import 'package:flutter/material.dart';

class LuxuryCarRentalPage extends StatefulWidget {
 @override
 _LuxuryCarRentalPageState createState() => _LuxuryCarRentalPageState();
}

class _LuxuryCarRentalPageState extends State<LuxuryCarRentalPage> {
 @override
 Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text('Luxury Car Rental'),
     ),
     body: Column(
       children: [
         Expanded(
           child: Image.asset(
            'assets/vehicule/peugeot.jpeg',
             fit: BoxFit.cover,
           ),
         ),
         Padding(
           padding: const EdgeInsets.all(16.0),
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               Text(
                 'La richesse est la conséquence d\'un travaille acharné et le luxe n\'a pas de prix.',
                 style: TextStyle(
                   fontSize: 16.0,
                   fontWeight: FontWeight.bold,
                 ),
               ),
               SizedBox(height: 16.0),
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Text(
                         '200',
                         style: TextStyle(
                           fontSize: 24.0,
                           fontWeight: FontWeight.bold,
                         ),
                       ),
                       Text('Clients chaque mois'),
                     ],
                   ),
                   Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Text(
                         '500',
                         style: TextStyle(
                           fontSize: 24.0,
                           fontWeight: FontWeight.bold,
                         ),
                       ),
                       Text('Véhicules de luxe en gestion'),
                     ],
                   ),
                 ],
               ),
               SizedBox(height: 16.0),
               Text(
                 'Type de véhicules proposés',
                 style: TextStyle(
                   fontSize: 16.0,
                   fontWeight: FontWeight.bold,
                 ),
               ),
               ElevatedButton(
                 onPressed: () {},
                 child: Text('véhicule de luxe'),
               ),
               SizedBox(height: 16.0),
               Text(
                 'Localisation',
                 style: TextStyle(
                   fontSize: 16.0,
                   fontWeight: FontWeight.bold,
                 ),
               ),
               Text('Cocody Riviera 3'),
               SizedBox(height: 16.0),
               Text(
                 'Tarification',
                 style: TextStyle(
                   fontSize: 16.0,
                   fontWeight: FontWeight.bold,
                 ),
               ),
               Text('40XOF - 200XOFI'),
               SizedBox(height: 16.0),
               Text(
                 'Conditions de location',
                 style: TextStyle(
                   fontSize: 16.0,
                   fontWeight: FontWeight.bold,
                 ),
               ),
               Text(
                 'Pour louer un véhicule chez NousAuto, les clients doivent avoir au moins 21 ans, être titulaires d\'un permis de conduire valide et présenter une carte d\'identité en cours de validité.',
               ),
             ],
           ),
         ),
         Padding(
           padding: const EdgeInsets.all(16.0),
           child: Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               IconButton(
                 onPressed: () {},
                 icon: Icon(Icons.home),
               ),
               IconButton(
                 onPressed: () {},
                 icon: Icon(Icons.search),
               ),
               IconButton(
                 onPressed: () {},
                 icon: Icon(Icons.info),
               ),
             ],
           ),
         ),
       ],
     ),
   );
 }
}