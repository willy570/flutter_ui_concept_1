import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_ui_concept_1/widgets/search_bar.dart';

import '../widgets/best_design.dart';
import '../widgets/promotion_container.dart';

class Home extends StatefulWidget {
  const Home({
    Key? key,
    required this.title,
  }) : super(key: key);
  final String title;

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        elevation: 0,
        leading: IconButton(
          onPressed: () => {},
          icon: const Icon(
            Icons.menu,
            color: Colors.black87,
          ),
        ),
        systemOverlayStyle: SystemUiOverlayStyle.light,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(30),
                  ),
                ),
                padding: const EdgeInsets.all(25.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Find Your",
                      style: textStyle(25, FontWeight.w100),
                    ),
                    const SizedBox(height: 5.0),
                    Text(
                      "Inspiration",
                      style: textStyle(40, FontWeight.bold),
                    ),
                    const SizedBox(height: 25.0),
                    //search bar widget
                    searchBar(),
                    const SizedBox(height: 10),
                  ],
                ),
              ),
              const SizedBox(height: 15),
              //promotion horizontal widget
              promotionContainer(),
              const SizedBox(height: 30),
              bestDesign('assets/images/three.jpg')
            ],
          ),
        ),
      ),
    );
  }

  TextStyle textStyle(double fontSize, FontWeight fontWeight) {
    return TextStyle(
        color: Colors.black87, fontSize: fontSize, fontWeight: fontWeight);
  }
}
