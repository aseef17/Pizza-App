import 'package:flutter/material.dart';
import 'package:pizza_app/models/pizza.dart';
import 'package:pizza_app/widgets/HomePage/pizza_item.dart';

Widget pizzaShowCase(screenWidth, screenHeight) {
  return Container(
    padding: EdgeInsets.symmetric(vertical: screenHeight * 0.025),
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: pizzaList.pizzas.length,
      itemBuilder: (BuildContext context, int i) {
        return ListofPizzas(
          name: pizzaList.pizzas[i].name,
          image: pizzaList.pizzas[i].image,
          price: pizzaList.pizzas[i].price,
          background: pizzaList.pizzas[i].background,
          foreground: pizzaList.pizzas[i].foreground,
          pizzaObject: pizzaList.pizzas[i],
        );
      },
    ),
  );
}