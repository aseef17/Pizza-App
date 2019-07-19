import 'package:flutter/material.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'package:pizza_app/widgets/HomePage/home_tabs.dart';
import 'package:pizza_app/widgets/HomePage/home_bottombar.dart';

class PizzaHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    FlutterStatusbarcolor.setStatusBarColor(Colors.black);
    return Scaffold(
      body: MainApp(),
      bottomNavigationBar: BottomBar(),
    );
  }
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Container(
      width: double.infinity,
      padding:
          EdgeInsets.only(left: screenWidth * 0.1, right: screenWidth * 0.075),
      child: ListView(
        children: <Widget>[
          Container(
            child: Column(
              children: <Widget>[
                titleBar(screenWidth, screenHeight),
                tabs(screenWidth, screenHeight)
              ],
            ),
          )
        ],
      ),
    );
  }
}

Widget titleBar(screenWidth, screenHeight) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: screenHeight * 0.065,
          ),
          Text("Featured",
              style: TextStyle(
                  fontWeight: FontWeight.w900, fontSize: screenWidth * 0.15)),
          Text(
            "Food",
            style: TextStyle(fontSize: screenWidth * 0.15),
          )
        ],
      )
    ],
  );
}


