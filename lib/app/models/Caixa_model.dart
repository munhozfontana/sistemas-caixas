class CaixaModel {
  int id;
  double comprimento;
  double largura;
  double altura;
  double orelha;
  double gramatura;
  double custo;
  String cliente;

  CaixaModel(
      {this.id,
      this.comprimento,
      this.largura,
      this.altura,
      this.orelha,
      this.gramatura,
      this.custo,
      this.cliente});

  CaixaModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    comprimento = json['comprimento'];
    largura = json['largura'];
    altura = json['altura'];
    orelha = json['orelha'];
    gramatura = json['gramatura'];
    custo = json['custo'];
    cliente = json['cliente'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['comprimento'] = this.comprimento;
    data['largura'] = this.largura;
    data['altura'] = this.altura;
    data['orelha'] = this.orelha;
    data['gramatura'] = this.gramatura;
    data['custo'] = this.custo;
    data['cliente'] = this.cliente;
    return data;
  }
}
