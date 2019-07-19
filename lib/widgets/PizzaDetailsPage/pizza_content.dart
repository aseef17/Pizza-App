import 'package:flutter/material.dart';
import 'package:pizza_app/models/pizza.dart';
import 'package:pizza_app/widgets/PizzaDetailsPage/pizza_detail_bottombar.dart';

class ForegroundContent extends StatelessWidget {
  final Pizza pizzaObject;

  const ForegroundContent({@required this.pizzaObject});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Column(
      children: <Widget>[
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: EdgeInsets.only(
                top: screenHeight * 0.05, left: screenWidth * 0.05),
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(Icons.arrow_back, size: screenWidth * 0.08),
            ),
          ),
        ),
        PizzaImage(pizzaObject.image, pizzaObject.name),
        SizedBox(height: screenHeight * 0.025),
        Padding(
          padding: EdgeInsets.only(
              left: screenWidth * 0.23, right: screenWidth * 0.10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              TitleText(pizzaObject.name),
              SizedBox(height: screenHeight * 0.025),
              StarRating(pizzaObject.starRating),
              SizedBox(height: screenHeight * 0.025),
              Description(pizzaObject.desc),
              SizedBox(height: screenHeight * 0.025),
              Price(pizzaObject.price, pizzaObject.name),
              SizedBox(height: screenHeight * 0.025),
              BottomButtons(),
              SizedBox(height: screenHeight * 0.03),
            ],
          ),
        )
      ],
    );
  }
}

class Price extends StatelessWidget {
  final double price;
  final String name;

  const Price(this.price, this.name);

  @override
  Widget build(BuildContext context) {
    return Text(
      "\$$price",
      style: TextStyle(
          color: Colors.black, fontSize: 25, fontWeight: FontWeight.w700),
    );
  }
}

class Description extends StatelessWidget {
  final String desc;

  const Description(this.desc);

  @override
  Widget build(BuildContext context) {
    return Text(
      desc,
      softWrap: true,
      style: TextStyle(
          color: Colors.black87,
          letterSpacing: 1.3,
          fontSize: 17,
          textBaseline: TextBaseline.alphabetic),
    );
  }
}

class StarRating extends StatelessWidget {
  final double rating;

  const StarRating(this.rating);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Text(rating.toString(),
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20)),
        SizedBox(width: 5),
        Icon(Icons.star, color: Colors.yellow[600], size: 25)
      ],
    );
  }
}

class TitleText extends StatelessWidget {
  const TitleText(this.pizzaName);
  final String pizzaName;

  @override
  Widget build(BuildContext context) {
    final double _fontSize = MediaQuery.of(context).size.width * 0.08;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(pizzaName,
            style: TextStyle(
              color: Colors.black,
              fontSize: _fontSize,
              fontFamily: "slabo",
              fontWeight: FontWeight.w500,
            )),
        Text("Pizza",
            style: TextStyle(
                color: Colors.black,
                fontSize: _fontSize,
                fontFamily: "slabo",
                fontWeight: FontWeight.w600)),
      ],
    );
  }
}

class PizzaImage extends StatelessWidget {
  final String imageURI;
  final String name;

  const PizzaImage(this.imageURI, this.name);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Container(
      height: screenWidth * 0.75,
      width: screenWidth * 0.75,
      child: Image.asset(imageURI),
    );
  }
}