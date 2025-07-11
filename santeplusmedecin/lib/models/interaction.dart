class Interaction {
  final String id;
  final String typeInteraction;
  final String contenuInteraction;
  final DateTime dateInteraction;
  final String expediteurId;
  final String destinataireId;

  Interaction({
    required this.id,
    required this.typeInteraction,
    required this.contenuInteraction,
    required this.dateInteraction,
    required this.expediteurId,
    required this.destinataireId,
  });

  factory Interaction.fromJson(Map<String, dynamic> json) {
    return Interaction(
      id: json['_id'],
      typeInteraction: json['typeInteraction'],
      contenuInteraction: json['contenuInteraction'],
      dateInteraction: DateTime.parse(json['dateInteraction']),
      expediteurId: json['expediteur'],
      destinataireId: json['destinataire'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      '_id': id,
      'typeInteraction': typeInteraction,
      'contenuInteraction': contenuInteraction,
      'dateInteraction': dateInteraction.toIso8601String(),
      'expediteur': expediteurId,
      'destinataire': destinataireId,
    };
  }
}
