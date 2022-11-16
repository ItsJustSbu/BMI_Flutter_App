// ignore_for_file: prefer_const_constructors

import 'package:bmi_calculator/calculator_brain.dart';
import 'package:bmi_calculator/results_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calculator/card_content.dart';
import 'package:bmi_calculator/reusable_card.dart';

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  var height = 180;
  var weight = 60;
  var age = 19;
  Gender? selectedGender;
  Color maleCardColour = Color(0xff1d1e33);
  // ignore: non_constant_identifier_names
  Color FemaleCardColour = Color(0xff1d1e33);
  // ignore: avoid_types_as_parameter_names, non_constant_identifier_names

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('BMI calculator'),
        ),
        body: Column(
          children: [
            //This Expanded widget contains the gender containers
            Expanded(
              child: Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        //0xff111328
                        setState(() {
                          selectedGender = Gender.male;
                        });
                      },
                      child: reusable_card(
                        colour: selectedGender == Gender.male
                            ? Color(0xff111328)
                            : Color(0xff1d1e33),
                        cardChild: cardContent(
                            icon: FontAwesomeIcons.mars, text: 'MALE'),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedGender = Gender.female;
                        });
                      },
                      child: reusable_card(
                        colour: selectedGender == Gender.female
                            ? Color(0xff111328)
                            : Color(0xff1d1e33),
                        cardChild: cardContent(
                            icon: FontAwesomeIcons.venus, text: 'FEMALE'),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Expanded(
              child: reusable_card(
                colour: Color(
                  0xff1d1e33,
                ),
                cardChild: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: const Text(
                          "HEIGHT",
                          style: TextStyle(
                            fontSize: 18,
                            color: Color(0xFF8D8E98),
                          ),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          '$height',
                          style: TextStyle(
                            fontSize: 50.0,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        Text('cm'),
                      ],
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        activeTrackColor: Colors.white,
                        thumbShape:
                            RoundSliderThumbShape(enabledThumbRadius: 15.0),
                        overlayShape:
                            RoundSliderOverlayShape(overlayRadius: 30.0),
                        thumbColor: Color(0xffeb1555),
                        overlayColor: Color(0x29eb1555),
                      ),
                      child: Slider(
                        value: height.toDouble(),
                        onChanged: (double newValue) {
                          setState(() {
                            height = newValue.round();
                          });
                        },
                        inactiveColor: Color(0xFF8D8E98),
                        min: 120.0,
                        max: 220.0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Expanded(
                    child: reusable_card(
                      colour: Color(0xff1d1e33),
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Text(
                            'WEIGHT',
                            style: TextStyle(
                              fontSize: 18,
                              color: Color(0xFF8D8E98),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children: [
                              Text(
                                '$weight',
                                style: TextStyle(
                                    fontSize: 50.0,
                                    fontWeight: FontWeight.w900),
                              ),
                              Text(
                                'kg',
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                RoundIconButton(
                                  child: Icon(Icons.remove),
                                  onPressed: () {
                                    setState(() {
                                      weight = weight - 1;
                                    });
                                  },
                                ),
                                SizedBox(
                                  width: 10.0,
                                ),
                                RoundIconButton(
                                  child: Icon(Icons.add),
                                  onPressed: () {
                                    setState(() {
                                      weight = weight + 1;
                                    });
                                  },
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: reusable_card(
                      colour: Color(0xff1d1e33),
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Text(
                            'AGE',
                            style: TextStyle(
                              fontSize: 18,
                              color: Color(0xFF8D8E98),
                            ),
                          ),
                          Text(
                            '$age',
                            style: TextStyle(
                                fontSize: 50.0, fontWeight: FontWeight.w900),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RoundIconButton(
                                  child: Icon(Icons.remove),
                                  onPressed: () {
                                    setState(() {
                                      age = age - 1;
                                    });
                                  }),
                              SizedBox(
                                width: 10.0,
                              ),
                              RoundIconButton(
                                  child: Icon(Icons.add),
                                  onPressed: () {
                                    setState(() {
                                      age = age + 1;
                                    });
                                  })
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                CalculatorBrain calc =
                    CalculatorBrain(height: height, weight: weight);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ResultsPage(
                              BMIResult: calc.calculateBMI(),
                              BMI_Intepretation: calc.getIntepretation(),
                              resultText: calc.getResult(),
                            )));
              },
              child: Container(
                color: Color(0xFFEB1555),
                margin: EdgeInsets.only(top: 10.0),
                width: double.infinity,
                height: 80.0,
                child: Center(
                  child: Text(
                    'CALCULATE',
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

class RoundIconButton extends StatelessWidget {
  const RoundIconButton(
      {super.key, required this.child, required this.onPressed});
  final Widget child;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      shape: CircleBorder(),
      elevation: 6.0,
      disabledElevation: 6.0,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      fillColor: Color(0xff4c4f5e),
      onPressed: onPressed,
      child: child,
    );
  }
}
