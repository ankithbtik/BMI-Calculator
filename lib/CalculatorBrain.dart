import 'package:flutter/cupertino.dart';
import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({@required this.height, @required this.weight});
  final double height;
  final int weight;

  double _bmi;

  String getBMI() {
    _bmi = weight / pow(height * 0.3048, 2);
    print('weight : ' + weight.toString());
    print('height : ' + height.toString());
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'OVER-WEIGHT';
    } else if (_bmi > 18.5) {
      return 'NORMAL';
    } else {
      return 'UNDER-WEIGHT';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You have a higher than normal body weight. Try to exercise more.';
    } else if (_bmi > 18.5) {
      return 'You have a normal body weight. Keep it up!';
    } else {
      return 'You have a lower than normal body weight. You should work on your diet.';
    }
  }

  Color getResultColor() {
    if (_bmi >= 18.5 && _bmi <= 25) {
      return Color(0xFF339F60);
    } else {
      return Color(0xFFF53D04);
    }
  }

  int getHeightInInch(double heightInFeet) {
    return (heightInFeet / 12).round();
  }
}
