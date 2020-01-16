
import 'dart:convert';

class Brand {
    final String label;
    final String value;

    Brand({
        this.label,
        this.value,
    });

    factory Brand.fromRawJson(String str) => Brand.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Brand.fromJson(Map<String, dynamic> json) => Brand(
        label: json["Label"],
        value: json["Value"],
    );

    Map<String, dynamic> toJson() => {
        "Label": label,
        "Value": value,
    };
}
