import 'package:flutter/material.dart';
import 'package:pizza_app/models/pizza.dart';
import 'package:pizza_app/widgets/HomePage/home_fav_icon.dart';
import 'package:pizza_app/pages/pizza_details.dart';

class ListofPizzas extends StatelessWidget {
  const ListofPizzas(
      {@required this.foreground,
      @required this.background,
      @required this.price,
      @required this.name,
      @required this.image,
      @required this.pizzaObject});

  final Color foreground;
  final Color background;
  final double price;
  final String name;
  final String image;
  final Pizza pizzaObject;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Row(
      children: <Widget>[
        GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => PizzaDetails(pizzaObject)));
          },
          child: Container(
            padding: EdgeInsets.symmetric(
                horizontal: screenWidth * 0.08,
                vertical: screenHeight * 0.0075),
            width: screenWidth * 0.52,
            decoration: BoxDecoration(
                color: background,
                borderRadius: BorderRadius.circular(screenWidth * 0.05)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: screenHeight * 0.025,
                ),
                SizedBox(
                  height: screenHeight * 0.22,
                  child: Image.asset(image),
                ),
                SizedBox(
                  height: screenHeight * 0.030,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(name,
                        style: TextStyle(
                            color: foreground,
                            fontSize: screenWidth * 0.050,
                            fontFamily: "salbo")),
                    Text("Pizza",
                        style: TextStyle(
                            color: foreground,
                            fontSize: screenWidth * 0.050,
                            fontFamily: "salbo",
                            fontWeight: FontWeight.w800)),
                  ],
                ),
                SizedBox(height: screenHeight * 0.025),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        "\$$price",
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: screenWidth * 0.05,
                            color: foreground),
                      ),
                    ),
                    StatefulFavIcon(foreground: foreground)
                  ],
                )
              ],
            ),
          ),
        ),
        SizedBox(
          width: screenWidth * 0.075,
        )
      ],
    );
  }
}