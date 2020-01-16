import 'package:flutter/material.dart';
import 'package:placa_fipe/model/car.model.dart';
import 'package:placa_fipe/view/widgets/widgets.dart' as widgets;


class ResultDetails extends StatefulWidget {
  Car car;
  ResultDetails({@required this.car});

  @override
  _ResultDetailsState createState() => _ResultDetailsState();
}

class _ResultDetailsState extends State<ResultDetails>
    with SingleTickerProviderStateMixin {
  Car car = new Car();

  AnimationController _controller;
  Animation<double> _animation;

  @override
  initState() {
    //setPriceCountAnimation();
    _controller = new AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );
    _animation = _controller;
    car = widget.car;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: widgets.appBar("Detalhes da Conta"),
      body: body(),
    );
  }


  Container body() {
    return Container(
      child: Center(
        child: Column(
          children: <Widget>[
            Text("da"),
          ],
        ),
      ),
    );
  }


  Container carDescription() {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
        ],
      ),
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(horizontal: 24),
    );
  }

  // Container billNameDescription() {
  //   return Container(
  //     child: Column(
  //       crossAxisAlignment: CrossAxisAlignment.start,
  //       children: <Widget>[
  //         widgets.basicText("Com o que gastei?", 30, Colors.black45),
  //         widgets.basicText(car.modelo, 26, Colors.black26),
  //       ],
  //     ),
  //     padding: EdgeInsets.symmetric(vertical: 20),
  //   );
  // }

  // Container billWhereDescription() {
  //   return Container(
  //     child: Column(
  //       crossAxisAlignment: CrossAxisAlignment.start,
  //       children: <Widget>[
  //         widgets.basicText("E onde foi isso?", 30, Colors.black45),
  //         widgets.basicText(bill.where, 26, Colors.black26),
  //       ],
  //     ),
  //     padding: EdgeInsets.symmetric(vertical: 20),
  //   );
  // }

  // Container billWhenDescription() {
  //   return Container(
  //     child: Column(
  //       crossAxisAlignment: CrossAxisAlignment.start,
  //       children: <Widget>[
  //         widgets.basicText("Em que dia?", 30, Colors.black45),
  //         widgets.basicText(bill.when, 26, Colors.black26),
  //       ],
  //     ),
  //     padding: EdgeInsets.symmetric(vertical: 20),
  //   );
  // }

  // Container itemPrice() {
  //   return Container(
  //     child: Column(
  //       crossAxisAlignment: CrossAxisAlignment.end,
  //       children: <Widget>[
  //         widgets.lightText(
  //           "Valor gasto",
  //           22,
  //           Colors.black26,
  //         ),
  //         new AnimatedBuilder(
  //           animation: _animation,
  //           builder: (BuildContext context, Widget child) {
  //             return widgets.basicText(
  //               "R\$ ${_animation.value.toStringAsFixed(1)}",
  //               60,
  //               Colors.red,
  //             );
  //           },
  //         ),
  //       ],
  //     ),
  //     width: MediaQuery.of(context).size.width,
  //     padding: EdgeInsets.symmetric(horizontal: 50, vertical: 30),
  //   );
  // }

  // void updateTotalPriceCount(double total) {
  //   _animation = new Tween<double>(
  //     begin: _animation.value,
  //     end: total,
  //   ).animate(new CurvedAnimation(
  //     curve: Curves.fastOutSlowIn,
  //     parent: _controller,
  //   ));
  // }
}
