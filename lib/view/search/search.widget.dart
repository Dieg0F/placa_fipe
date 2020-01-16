import 'package:flutter/material.dart';
import 'package:placa_fipe/model/car.model.dart';
import 'package:placa_fipe/view/widgets/widgets.dart' as widgets;

class SearchVehicle extends StatefulWidget {
  @override
  _SearchVehicleState createState() => _SearchVehicleState();
}

class _SearchVehicleState extends State<SearchVehicle> {
  String plate = '';
  FocusNode plateFocus = new FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: widgets.appBar("Busca por placa"),
      body: bodyScroll(),
    );
  }

  SingleChildScrollView bodyScroll() {
    return SingleChildScrollView(
      child: body(),
    );
  }

  void searchPlate() {
    setState(() {
      //bloc.searchPlate(plate);
      Navigator.pop(context);
    });
  }

  Container body() {
    return Container(
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            widgets.basicText("Digite a placa", 26, Colors.black54),
            rowPlate(),
          ],
        ),
      ),
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 35),
    );
  }

  Container rowPlate() {
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          inputLetters(),
          Container(
            child: Center(
              child: widgets.basicText("-", 26, Colors.black54),
            ),
            width: 20,
            height: 55,
          ),
          inputNumbers(),
        ],
      ),
    );
  }

  Container inputField(Text textLabel, TextField inputText) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          textLabel,
          Flexible(
            child: Container(
              child: inputText,
              padding: EdgeInsets.symmetric(
                horizontal: 8,
                vertical: 16,
              ),
            ),
          ),
        ],
      ),
      height: 150,
    );
  }

  Container inputLetters() {
    return Container(
      width: 60,
      height: 80,
      child: TextField(
        onChanged: (String value) {
          plate = value;
        },
        maxLength: 3,
        keyboardType: TextInputType.text,
        cursorColor: Colors.redAccent,
        style: widgets.inputTextStyle(),
        decoration: widgets.inputDecoration(),
        onSubmitted: (String value) {
          plate = value;
        },
      ),
    );
  }

  Container inputNumbers() {
    return Container(
      width: 70,
      height: 80,
      child: TextField(
        onChanged: (String value) {
          plate = value;
        },
        maxLength: 4,
        keyboardType: TextInputType.text,
        cursorColor: Colors.redAccent,
        style: widgets.inputTextStyle(),
        decoration: widgets.inputDecoration(),
        onSubmitted: (String value) {
          plate = value;
        },
      ),
    );
  }
}
