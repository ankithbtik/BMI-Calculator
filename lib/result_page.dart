import 'package:flutter/material.dart';

import 'constants.dart';

class ResultPage extends StatelessWidget {
  ResultPage(
      {@required this.bmi,
      @required this.result,
      @required this.interpretation,
      @required this.resultColor});

  final String bmi;
  final String result;
  final String interpretation;
  final Color resultColor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              margin: EdgeInsets.all(30.0),
              padding: EdgeInsets.all(30.0),
              color: kInactiveCardColor,
              child: Column(
                children: [
                  Text(
                    result,
                    style: TextStyle(
                      color: resultColor,
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5.0),
                  Text(
                    bmi,
                    style: TextStyle(
                      fontSize: 100.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 25.0),
                  Text(
                    'Normal BMI range:',
                    style: TextStyle(
                      fontSize: 23.0,
                      fontWeight: FontWeight.normal,
                      color: Color(0xFF8A8B96),
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    '18.5 - 25',
                    style: TextStyle(
                      fontSize: 23.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 40.0),
                  Text(
                    interpretation,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 23.0,
                      fontWeight: FontWeight.normal,
                    ),
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
              width: double.infinity,
              height: kBottomContainerHeight,
              color: kBottomContainerColor,
              child: Center(
                child: Text(
                  'RE-CALCULATE YOUR BMI',
                  style: kLargeButtonTextStyle,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
