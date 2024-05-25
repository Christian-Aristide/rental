import 'package:flutter/material.dart';

class lycoris extends StatelessWidget {
  const lycoris({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Container(
          padding: EdgeInsets.all(8.0),
          // color: Colors.white,
          width: double.infinity,
          height: 250,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: Colors.amber),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Lanborghini',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 10.0),

              Container(
                height: 150,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        "https://i.pinimg.com/564x/78/49/bf/7849bf28e670d5cb0d3cdb38fea9ffc3.jpg"),
                    fit:
                        BoxFit.cover, // Ajuste l'image à la taille du conteneur
                  ),
                ),
              ),
              SizedBox(height: 10.0),

              // ROW POUR LES DESCRIPTION
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      border: Border.all(),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.star, // Remplace par l'icône de ton choix
                          size: 24.0, // Taille de l'icône
                          color: Colors.yellow, // Couleur de l'icône
                        ),
                        SizedBox(
                            width: 8.0), // Espace entre l'icône et le texte
                        Text(
                          "Ton texte ici", // Le texte que tu veux afficher
                          style: TextStyle(
                            fontSize: 12.0, // Taille du texte
                            color: Colors.black, // Couleur du texte
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 3.0),
                  Container(
                    padding: EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      border: Border.all(),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.star, // Remplace par l'icône de ton choix
                          size: 24.0, // Taille de l'icône
                          color: Colors.yellow, // Couleur de l'icône
                        ),
                        SizedBox(
                            width: 8.0), // Espace entre l'icône et le texte
                        Text(
                          "Ton texte ici", // Le texte que tu veux afficher
                          style: TextStyle(
                            fontSize: 12.0, // Taille du texte
                            color: Colors.black, // Couleur du texte
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 3.0),
                  Text(
                    "120000 XOF", // Le texte que tu veux afficher
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold, // Taille du texte
                      color: Colors.black, // Couleur du texte
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      )
      ),
    );
  }
}
