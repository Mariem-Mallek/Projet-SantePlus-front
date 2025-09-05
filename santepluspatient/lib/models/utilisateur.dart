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
  final String? sexe;
  final double? poids;
  final double? taille;

  Utilisateur({
    this.id,
    this.nom,
    this.prenom,
    required this.email,
    required this.mdp,
    this.image,
    this.role,
    this.dateNaiss,
    this.sexe,
    this.poids,
    this.taille,
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
      sexe: sexe,
      poids: poids,
      taille: taille,
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
      sexe: json['sexe'],
      poids: (json['poids'] as num).toDouble(),
      taille: (json['taille'] as num).toDouble(),
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
      'sexe': sexe,
      'poids': poids,
      'taille': taille,
    };
  }

   factory Utilisateur.fromSnapshot(DocumentSnapshot snapshot) {
    var data = snapshot.data() as Map<String, dynamic>;
    return Utilisateur(
      id: snapshot.id,
      nom: data['nom'] ?? '',
      email: data['email'] ?? '',
      prenom: data['prenom'] ?? '',
      mdp: data['mdp'] ?? '',
      image: data['image'] ?? 'utilisateur.png',
      role: data['role'] ?? 'patient',
      dateNaiss: (data['dateNaiss'] as Timestamp).toDate(),
      sexe: data['sexe'] ?? '',
      poids: (data['poids'] as num).toDouble(),
      taille: (data['taille'] as num).toDouble(),
      
    );
  }
}
