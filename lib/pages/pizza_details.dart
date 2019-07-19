import 'package:flutter/material.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'package:pizza_app/models/pizza.dart';
import 'package:pizza_app/widgets/PizzaDetailsPage/pizza_detail_arc.dart';
import 'package:pizza_app/widgets/PizzaDetailsPage/pizza_content.dart';

class PizzaDetails extends StatelessWidget {
  PizzaDetails(this.pizzaObject);

  final Pizza pizzaObject;

  @override
  Widget build(BuildContext context) {
    FlutterStatusbarcolor.setStatusBarColor(pizzaObject.background);
    return Scaffold(
      body: Center(
          child: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              BackgroundArc(pizzaObject.background),
              ForegroundContent(pizzaObject: pizzaObject)
            ],
          )
        ],
      )),
    );
  }
}

