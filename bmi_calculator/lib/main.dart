import 'package:bmi_calculator/screens/input_page.dart';
import 'package:flutter/material.dart';

import 'components/constants.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        colorScheme:
            ColorScheme.fromSwatch(primarySwatch: Palette.purpleishBlack)
                .copyWith(secondary: Colors.purple.shade600),
        scaffoldBackgroundColor: Palette.purpleishBlack,
        textTheme: Theme.of(context).textTheme.apply(
              bodyColor: Palette.purpleishBlack.shade900,
            ),
      ),
      home: InputPage(),
    );
  }
}
