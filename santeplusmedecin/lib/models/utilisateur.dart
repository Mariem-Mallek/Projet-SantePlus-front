import 'package:cloud_firestore/cloud_firestore.dart';

class Utilisateur {
  final String? id;
  final String? nom;
  final String? prenom;
  final String? email;
  final String? mdp;
  final String? image;
  final String? role;
  final DateTime? dateNaiss;
  final String? numTel;
  final String? numProfessionnel;
  final String? specialite;
  final double? latitude;
  final double? longitude;
  final String? ville;

  Utilisateur({
    this.id,
    this.nom,
    this.prenom,
    this.email,
    this.mdp,
    this.image,
    this.role,
    this.dateNaiss,
    this.numTel,
    this.numProfessionnel,
    this.specialite,
    this.latitude,
    this.longitude,
    this.ville,
  });

  Utilisateur setId(String IdUser) {
    return Utilisateur(
      id: IdUser,
      email: email,
      nom: nom,
      prenom: prenom,
      mdp: mdp,
      image: image,
      role: role,
      dateNaiss: dateNaiss,
      numTel: numTel,
      numProfessionnel: numProfessionnel,
      specialite: specialite,
      latitude: latitude,
      longitude: longitude,
      ville: ville,
    );
  }

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
      numTel: json['numTel'],
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
      'dateNaiss': dateNaiss,
      'numTel': numTel,
      'numProfessionnel': numProfessionnel,
      'specialite': specialite,
      'latitude': latitude,
      'longitude': longitude,
      'ville': ville,
    };
  }

  factory Utilisateur.fromSnapshot(DocumentSnapshot snapshot) {
    final data = snapshot.data() as Map<String, dynamic>;
    return Utilisateur(
      id: snapshot.id,
      nom: data['nom'],
      prenom: data['prenom'],
      email: data['email'],
      mdp: data['mdp'],
      image: data['image'] ?? "utilisateur.png",
      role: data['role'],
      dateNaiss: (data['dateNaiss'] as Timestamp).toDate(),
      numTel: data['numTel'],
      numProfessionnel: data['numProfessionnel'],
      specialite: data['specialite'],
      latitude: (data['latitude'] as num).toDouble(),
      longitude: (data['longitude'] as num).toDouble(),
      ville: data['ville'],
    );
  }
}
