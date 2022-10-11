import 'package:bmi_calculator/under_the_hood/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class IconContent extends StatelessWidget {
  final IconData customIcon;
  final String iconText;

  IconContent(this.customIcon, this.iconText);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          child: FaIcon(customIcon, size: 80.0),
          padding: EdgeInsets.only(bottom: 15.0),
        ),
        Text(
          iconText,
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}
