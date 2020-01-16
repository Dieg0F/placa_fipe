import 'dart:convert';

class TableReference {
    final int codigo;
    final String mes;

    TableReference({
        this.codigo,
        this.mes,
    });

    factory TableReference.fromRawJson(String str) => TableReference.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory TableReference.fromJson(Map<String, dynamic> json) => TableReference(
        codigo: json["Codigo"],
        mes: json["Mes"],
    );

    Map<String, dynamic> toJson() => {
        "Codigo": codigo,
        "Mes": mes,
    };
}
