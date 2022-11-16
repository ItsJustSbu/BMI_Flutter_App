import 'package:flutter/material.dart';
import 'package:bmi_calculator/pallet.dart';
import 'package:bmi_calculator/input_page.dart';

void main() {
  runApp(const BMICalculator());
}

class BMICalculator extends StatelessWidget {
  const BMICalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Palette.myColor)
            .copyWith(secondary: Colors.purple),
        scaffoldBackgroundColor: Palette.myColor,
        // ignore: prefer_const_constructors
        textTheme: TextTheme(
          bodyText2: const TextStyle(color: Colors.white),
        ),
      ),
      home: const InputPage(),
    );
  }
}
