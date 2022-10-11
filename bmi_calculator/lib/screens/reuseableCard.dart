import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ReuseableCard extends StatelessWidget {
  final Color containerColor;
  final Widget? cardChild;

  ReuseableCard({required this.containerColor, this.cardChild});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: containerColor,
      ),
    );
  }
}
