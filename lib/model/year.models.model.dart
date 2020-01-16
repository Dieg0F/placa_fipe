import 'dart:convert';

class YearModel {
    final String label;
    final String value;

    YearModel({
        this.label,
        this.value,
    });

    factory YearModel.fromRawJson(String str) => YearModel.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory YearModel.fromJson(Map<String, dynamic> json) => YearModel(
        label: json["Label"],
        value: json["Value"],
    );

    Map<String, dynamic> toJson() => {
        "Label": label,
        "Value": value,
    };
}
