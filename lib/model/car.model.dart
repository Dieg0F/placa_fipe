import 'dart:convert';

class Car {
    final String valor;
    final String marca;
    final String modelo;
    final int anoModelo;
    final String combustivel;
    final String codigoFipe;
    final String mesReferencia;
    final String autenticacao;
    final int tipoVeiculo;
    final String siglaCombustivel;
    final String dataConsulta;

    Car({
        this.valor,
        this.marca,
        this.modelo,
        this.anoModelo,
        this.combustivel,
        this.codigoFipe,
        this.mesReferencia,
        this.autenticacao,
        this.tipoVeiculo,
        this.siglaCombustivel,
        this.dataConsulta,
    });

    factory Car.fromRawJson(String str) => Car.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Car.fromJson(Map<String, dynamic> json) => Car(
        valor: json["Valor"],
        marca: json["Marca"],
        modelo: json["Modelo"],
        anoModelo: json["AnoModelo"],
        combustivel: json["Combustivel"],
        codigoFipe: json["CodigoFipe"],
        mesReferencia: json["MesReferencia"],
        autenticacao: json["Autenticacao"],
        tipoVeiculo: json["TipoVeiculo"],
        siglaCombustivel: json["SiglaCombustivel"],
        dataConsulta: json["DataConsulta"],
    );

    Map<String, dynamic> toJson() => {
        "Valor": valor,
        "Marca": marca,
        "Modelo": modelo,
        "AnoModelo": anoModelo,
        "Combustivel": combustivel,
        "CodigoFipe": codigoFipe,
        "MesReferencia": mesReferencia,
        "Autenticacao": autenticacao,
        "TipoVeiculo": tipoVeiculo,
        "SiglaCombustivel": siglaCombustivel,
        "DataConsulta": dataConsulta,
    };
}