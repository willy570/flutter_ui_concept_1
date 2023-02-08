import 'package:flutter/material.dart';

Widget searchBar() {
  return Container(
    padding: const EdgeInsets.all(5),
    decoration: BoxDecoration(
      color: const Color.fromRGBO(244, 243, 243, 1),
      borderRadius: BorderRadius.circular(15),
    ),
    child: TextFormField(
      decoration: const InputDecoration(
        border: InputBorder.none,
        prefixIcon: Icon(
          Icons.search,
          color: Colors.black87,
        ),
        hintText: "Search you're looking for",
        hintStyle: TextStyle(
          color: Colors.grey,
          fontSize: 15,
        ),
      ),
    ),
  );
}
