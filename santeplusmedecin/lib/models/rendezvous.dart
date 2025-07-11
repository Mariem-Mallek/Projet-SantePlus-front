class RendezVous {
  final String id;
  final DateTime dateRV;
  final String heureRV;
  final String statutRV;
  final String patientId;
  final String medecinId;

  RendezVous({
    required this.id,
    required this.dateRV,
    required this.heureRV,
    required this.statutRV,
    required this.patientId,
    required this.medecinId,
  });

  factory RendezVous.fromJson(Map<String, dynamic> json) {
    return RendezVous(
      id: json['_id'],
      dateRV: DateTime.parse(json['dateRV']),
      heureRV: json['heureRV'],
      statutRV: json['statutRV'],
      patientId: json['patient'],
      medecinId: json['medecin'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      '_id': id,
      'dateRV': dateRV.toIso8601String(),
      'heureRV': heureRV,
      'statutRV': statutRV,
      'patient': patientId,
      'medecin': medecinId,
    };
  }
}
