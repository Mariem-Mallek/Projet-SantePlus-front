class Utilisateur {
  final String id;
  final String nom;
  final String prenom;
  final String email;
  final String mdp;
  final String image;
  final String role;
  final DateTime dateNaiss;
  final String numProfessionnel;
  final String specialite;
  final double latitude;
  final double longitude;
  final String ville;

  Utilisateur({
    required this.id,
    required this.nom,
    required this.prenom,
    required this.email,
    required this.mdp,
    required this.image,
    required this.role,
    required this.dateNaiss,
    required this.numProfessionnel,
    required this.specialite,
    required this.latitude,
    required this.longitude,
    required this.ville,
  });

  factory Utilisateur.fromJson(Map<String, dynamic> json) {
    return Utilisateur(
      id: json['_id'],
      nom: json['nom'],
      prenom: json['prenom'],
      email: json['email'],
      mdp: json['mdp'],
      image: json['image'] ?? "utilisateur.png",
      role: json['role'],
      dateNaiss: DateTime.parse(json['dateNaiss']),
      numProfessionnel: json['numProfessionnel'],
      specialite: json['specialite'],
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
      ville: json['ville'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      '_id': id,
      'nom': nom,
      'prenom': prenom,
      'email': email,
      'mdp': mdp,
      'image': image,
      'role': role,
      'dateNaiss': dateNaiss.toIso8601String(),
      'numProfessionnel': numProfessionnel,
      'specialite': specialite,
      'latitude': latitude,
      'longitude': longitude,
      'ville': ville,
    };
  }
}
