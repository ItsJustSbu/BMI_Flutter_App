import 'package:flutter/material.dart';

// ignore: camel_case_types
class reusable_card extends StatelessWidget {
  final Color colour;
  final Widget cardChild;
  const reusable_card(
      {super.key, required this.colour, required this.cardChild});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: colour,
      ),
    );
  }
}
