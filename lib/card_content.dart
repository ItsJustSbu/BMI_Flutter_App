import 'package:flutter/material.dart';

class cardContent extends StatelessWidget {
  final IconData icon;
  final String text;
  // ignore: use_key_in_widget_constructors
  const cardContent({required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        Icon(
          icon,
          size: 80,
        ),
        // ignore: prefer_const_constructors
        SizedBox(
          height: 15.0,
        ),
        Text(
          text,
          style: TextStyle(fontSize: 18, color: Color(0xFF8D8E98)),
        )
      ],
    );
  }
}
