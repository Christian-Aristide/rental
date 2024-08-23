import 'package:flutter/material.dart';
import 'package:carousel_images/carousel_images.dart';



class slide extends StatelessWidget {
  final List<String> listImages = [
    'assets/vehicule/peugeot.jpeg',
    'assets/vehicule/peugeot.jpeg',
    'assets/vehicule/peugeot.jpeg',
    'assets/vehicule/ferrari.jpeg',
    'assets/vehicule/aston_martin.jpeg',
  ];

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: <Widget>[
          SizedBox(height: 10),
          CarouselImages(
            scaleFactor: 0.7,
            listImages: listImages,
            height: 300.0,
            borderRadius: 10.0,
            cachedNetworkImage: true,
            verticalAlignment: Alignment.bottomCenter,
            onTap: (index) {
              print('Tapped on page $index');
            },
          )
        ],
      ),
    );
  }
}