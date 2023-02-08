import 'package:flutter/material.dart';
import 'package:flutter_ui_concept_1/widgets/promo_card.dart';

Widget promotionContainer() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Text(
          "Promo Today",
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        SizedBox(
          height: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              promoCard('assets/images/one.jpg'),
              promoCard('assets/images/two.jpg'),
              promoCard('assets/images/three.jpg'),
              promoCard('assets/images/four.jpg'),
            ],
          ),
        )
      ],
    ),
  );
}
