class Ordonnance {
  final String id;
  final DateTime dateOrd;
  final List<dynamic> medicaments;
  final String remarques;
  final String fichierOrd;
  final String patientId;
  final String medecinId;

  Ordonnance({
    required this.id,
    required this.dateOrd,
    required this.medicaments,
    required this.remarques,
    required this.fichierOrd,
    required this.patientId,
    required this.medecinId,
  });

  factory Ordonnance.fromJson(Map<String, dynamic> json) {
    return Ordonnance(
      id: json['_id'],
      dateOrd: DateTime.parse(json['dateOrd']),
      medicaments: json['medicaments'],
      remarques: json['remarques'],
      fichierOrd: json['fichierOrd'],
      patientId: json['patient'],
      medecinId: json['medecin'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      '_id': id,
      'dateOrd': dateOrd.toIso8601String(),
      'medicaments': medicaments,
      'remarques': remarques,
      'fichierOrd': fichierOrd,
      'patient': patientId,
      'medecin': medecinId,
    };
  }
}
