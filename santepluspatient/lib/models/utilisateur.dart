class Utilisateur {
  final String id;
  final String nom;
  final String prenom;
  final String email;
  final String mdp;
  final String image;
  final String role;
  final DateTime dateNaiss;
  final String sexe;
  final double poids;
  final double taille;

  Utilisateur({
    required this.id,
    required this.nom,
    required this.prenom,
    required this.email,
    required this.mdp,
    required this.image,
    required this.role,
    required this.dateNaiss,
    required this.sexe,
    required this.poids,
    required this.taille,
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
      'dateNaiss': dateNaiss.toIso8601String(),
      'sexe': sexe,
      'poids': poids,
      'taille': taille,
    };
  }
}
