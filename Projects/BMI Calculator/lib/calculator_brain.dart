import 'dart:math';

import 'package:flutter/cupertino.dart';

class CalculatorBrain {
  CalculatorBrain({@required this.height, @required this.weight});
  final int height;
  final int weight;

  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getType() {
    if (_bmi >= 25)
      return 'Overweight';
    else if (_bmi > 18.5)
      return 'Normal';
    else
      return 'Underweight';
  }

  String getAdvice() {
    if (_bmi >= 25)
      return 'Over Normal , do more exercises';
    else if (_bmi > 18.5)
      return 'Normal , keep going';
    else
      return 'Underweight , eat more with training';
  }
}
