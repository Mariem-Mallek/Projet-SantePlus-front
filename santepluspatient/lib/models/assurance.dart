class Assurance {
  final String id;
  final DateTime dateConsultation;
  final String actes;
  final String statutCnam;
  final int montantTotal;
  final int tauxPriseEnCharge;
  final int montantRembourse;
  final String fichierCNAM;
  final String patientId;
  final String medecinId;

  Assurance({
    required this.id,
    required this.dateConsultation,
    required this.actes,
    required this.statutCnam,
    required this.montantTotal,
    required this.tauxPriseEnCharge,
    required this.montantRembourse,
    required this.fichierCNAM,
    required this.patientId,
    required this.medecinId,
  });

  factory Assurance.fromJson(Map<String, dynamic> json) {
    return Assurance(
      id: json['_id'],
      dateConsultation: DateTime.parse(json['dateConsultation']),
      actes: json['actes'],
      statutCnam: json['statutCnam'],
      montantTotal: json['montantTotal'],
      tauxPriseEnCharge: json['tauxPriseEnCharge'],
      montantRembourse: json['montantRembourse'],
      fichierCNAM: json['fichierCNAM'],
      patientId: json['patient'],
      medecinId: json['medecin'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      '_id': id,
      'dateConsultation': dateConsultation.toIso8601String(),
      'actes': actes,
      'statutCnam': statutCnam,
      'montantTotal': montantTotal,
      'tauxPriseEnCharge': tauxPriseEnCharge,
      'montantRembourse': montantRembourse,
      'fichierCNAM': fichierCNAM,
      'patient': patientId,
      'medecin': medecinId,
    };
  }
}
