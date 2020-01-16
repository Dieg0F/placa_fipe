
import 'dart:convert';

class Models {
    final List<Vehicle> vehicles;

    Models({
        this.vehicles,
    });

    factory Models.fromRawJson(String str) => Models.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Models.fromJson(Map<String, dynamic> json) => Models(
        vehicles: List<Vehicle>.from(json["Modelos"].map((x) => Vehicle.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "Modelos": List<dynamic>.from(vehicles.map((x) => x.toJson())),
    };
}

class Vehicle {
    final String label;
    final int value;

    Vehicle({
        this.label,
        this.value,
    });

    factory Vehicle.fromRawJson(String str) => Vehicle.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Vehicle.fromJson(Map<String, dynamic> json) => Vehicle(
        label: json["Label"],
        value: json["Value"],
    );

    Map<String, dynamic> toJson() => {
        "Label": label,
        "Value": value,
    };
}