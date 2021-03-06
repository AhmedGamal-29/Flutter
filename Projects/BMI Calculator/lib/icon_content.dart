import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class ReusableCardChild extends StatelessWidget {
  ReusableCardChild({this.icon, this.gender});
  final String gender;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          gender,
          style: kLabelTextStyle,
        )
      ],
    );
  }
}
