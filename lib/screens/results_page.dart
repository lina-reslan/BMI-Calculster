import 'package:calculater_app/components/calculate_button.dart';
import 'package:calculater_app/constants.dart';
import 'package:calculater_app/components/reusable_card.dart';
import 'package:flutter/material.dart';


double result = 28.4;
class ResultsPage extends StatelessWidget {
  const ResultsPage({required this.resultText,required this.bmiResult,required this.interpretation,super.key});

  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0XFF0A0E21),
        title: const Text('BMI CALCULATER'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 15.0,horizontal: 30.0),
              child: Text(
                'Your Result',
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCad(
              onPress: () {},
              colour: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                   Text(
                    resultText.toUpperCase(),
                    style: kResultTextStyle,
                  ),
                  Text(
                    bmiResult,
                    style: kBMIResultTextStyle,
                  ),
                   Text(
                    interpretation,
                    textAlign: TextAlign.center,
                    style: kDescriptionTextStyle,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: CalculateButton(
              onPress: () {
                Navigator.pop(context);
              },
              text: 'RE-CALCULATE',
            ),
          ),
        ],
      ),
    );
  }
}
