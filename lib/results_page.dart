import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage(
      // ignore: non_constant_identifier_names
      {required this.BMIResult,
      // ignore: non_constant_identifier_names
      required this.BMI_Intepretation,
      required this.resultText});
  // ignore: non_constant_identifier_names
  final String BMIResult;
  // ignore: non_constant_identifier_names
  final String BMI_Intepretation;
  final String resultText;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('BMI Calculator'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Container(
                // ignore: prefer_const_constructors
                child: Text(
                  'Your Result',
                  // ignore: prefer_const_constructors
                  style: TextStyle(
                    fontSize: 50.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: reusable_card(
                colour: Color(0xff1d1e33),
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    // ignore: prefer_const_constructors
                    Text(
                      resultText,
                      // ignore: prefer_const_constructors
                      style: TextStyle(
                        color: Color(0xff24d876),
                        fontSize: 22.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    // ignore: prefer_const_constructors
                    Text(
                      BMIResult,
                      // ignore: prefer_const_constructors
                      style: TextStyle(
                        fontSize: 100,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    // ignore: prefer_const_constructors
                    Text(
                      BMI_Intepretation,
                      // ignore: prefer_const_constructors
                      style: TextStyle(fontSize: 22),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                color: Color(0xFFEB1555),
                margin: EdgeInsets.only(top: 10.0),
                width: double.infinity,
                height: 80.0,
                // ignore: prefer_const_constructors
                child: Center(
                  child: Text(
                    'RE-CALCULATE',
                    style: TextStyle(
                      fontSize: 15.0,
                    ),
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
