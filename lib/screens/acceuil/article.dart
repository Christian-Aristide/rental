class Article {
  final int id;
  final String nomArticle;
  final int idCategorie;
  final int quantite;
  final int prixUnitaire;
  final DateTime dateFabrication;
  final DateTime dateExpiration;
  final String? images;

  Article({
    required this.id,
    required this.nomArticle,
    required this.idCategorie,
    required this.quantite,
    required this.prixUnitaire,
    required this.dateFabrication,
    required this.dateExpiration,
    this.images,
  });

  factory Article.fromJson(Map<String, dynamic> json) {
    return Article(
      id: json['id'],
      nomArticle: json['nom_article'],
      idCategorie: json['id_categorie'],
      quantite: json['quantite'],
      prixUnitaire: json['prix_unitaire'],
      dateFabrication: DateTime.parse(json['date_fabrication']),
      dateExpiration: DateTime.parse(json['date_expiration']),
      images: json['images'],
    );
  }
}
