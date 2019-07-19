import 'package:flutter/material.dart';
// import 'dart:ui';
import 'package:pizza_app/pages/pizza_home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blueGrey, fontFamily: "slabo"),
      debugShowCheckedModeBanner: false,
      title: "Pizza App",
      home: PizzaHome(),
    );
  }
}
