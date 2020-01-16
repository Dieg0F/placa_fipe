import 'package:flutter/material.dart';
import 'package:placa_fipe/model/car.model.dart';
import 'package:placa_fipe/view/result/result.widget.dart';

class Routes {
  BuildContext context;

  Routes({@required this.context});

  void toResultDetails(Car car) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ResultDetails(car: car),
      ),
    );
  }
}