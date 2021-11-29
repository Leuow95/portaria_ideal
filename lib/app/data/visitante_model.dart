class VisitanteModel {
  String name;
  String destino;
  String veiculo;

  VisitanteModel({
    required this.name,
    required this.destino,
    required this.veiculo,
  });

  static List<VisitanteModel> listaVisitantes = [
    VisitanteModel(name: 'João', destino: 'Bloco 3 APT 103', veiculo: 'Carro'),
    VisitanteModel(name: 'Leo', destino: 'Bloco 4 apt 201', veiculo: 'Moto'),
  ];

  // VisitanteModel.fromJson(Map<String, dynamic> json) {
  //   this.name = json['name'];
  //   this.destino = json['destino'];
  // }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    return data;
  }
}
