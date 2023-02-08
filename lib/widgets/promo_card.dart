import 'package:flutter/material.dart';

Widget promoCard(String img) {
  return AspectRatio(
    aspectRatio: 2.62 / 3,
    child: Container(
      margin: const EdgeInsets.only(right: 15.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: AssetImage(img),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          gradient: LinearGradient(
            begin: Alignment.bottomRight,
            stops: const [.1, .9],
            colors: [
              Colors.black.withOpacity(.8),
              Colors.black.withOpacity(.1),
            ],
          ),
        ),
      ),
    ),
  );
}
