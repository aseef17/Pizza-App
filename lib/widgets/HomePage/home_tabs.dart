import 'package:flutter/material.dart';
import 'package:pizza_app/widgets/HomePage/pizza_list.dart';

Widget tabs(screenWidth, screenHeight) {
  return Container(
    height: screenHeight * 0.63,
    width: double.infinity,
    child: DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.transparent,
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(screenHeight * 0.02),
            child: Container(
              color: Colors.transparent,
              child: SafeArea(
                child: Column(
                  children: <Widget>[
                    TabBar(
                      isScrollable: true,
                      labelPadding: EdgeInsets.only(top: screenHeight * 0.015),
                      indicatorColor: Colors.black,
                      indicatorSize: TabBarIndicatorSize.label,
                      labelColor: Colors.black,
                      indicator: UnderlineTabIndicator(
                          borderSide: BorderSide(width: 2.0),
                          insets: EdgeInsets.symmetric(horizontal: 25)),
                      labelStyle: TextStyle(
                          fontSize: screenWidth * 0.075,
                          fontWeight: FontWeight.w800,
                          fontFamily: "slabo"),
                      unselectedLabelColor: Colors.black26,
                      unselectedLabelStyle: TextStyle(
                          fontSize: screenWidth * 0.075,
                          fontWeight: FontWeight.w200,
                          fontFamily: "slabo"),
                      tabs: <Widget>[
                        Container(
                          child: Text("Pizza"),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: screenWidth * 0.075),
                          child: Text("Rolls"),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: screenWidth * 0.075),
                          child: Text("Burgers"),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: screenWidth * 0.075),
                          child: Text("Sandwiches"),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            pizzaShowCase(screenWidth, screenHeight),
            Center(
              child: Text(
                "Rolls Tab",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: screenWidth * 0.1),
              ),
            ),
            Center(
              child: Text(
                "Burgers Tab",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: screenWidth * 0.1),
              ),
            ),
            Center(
              child: Text(
                "Sandwiches Tab",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: screenWidth * 0.1),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
