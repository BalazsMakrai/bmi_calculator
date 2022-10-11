import 'package:bmi_calculator/screens/bottom_button.dart';
import 'package:bmi_calculator/screens/reuseableCard.dart';
import 'package:flutter/material.dart';

import '../components/constants.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage(
      {required this.bmiResult,
      required this.resultText,
      required this.interpretaion});

  final String bmiResult;
  final String resultText;
  final String interpretaion;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI Calculator'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.all(25.0),
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Your result',
                  style: kTitleTextStyle,
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: ReuseableCard(
                containerColor: kActiveCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(resultText, style: kResultTextStyle),
                    Text(bmiResult, style: kBMITextStyle),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text(
                        interpretaion,
                        style: kBodyTextStyle,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            BottomButton(
                onTap: () {
                  Navigator.pop(context);
                },
                buttonTitle: 'RE-CALCULATE'),
          ],
        ));
  }
}
