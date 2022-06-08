import 'package:flutter/material.dart';

class MonthContainer extends StatelessWidget {
  const MonthContainer({
    Key? key,
    required this.month,
    required this.fillColor,
    required this.borderColor,
    required this.textColor,
    required this.fontFamily,
  }) : super(key: key);

  final String month;
  final Color fillColor;
  final Color borderColor;
  final Color textColor;
  final String fontFamily;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 25,
      width: 60,
      decoration: BoxDecoration(
        border: Border.all(
          color: borderColor,
        ),
        color: fillColor,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Center(
        child: Text(
          month,
          style: TextStyle(
            fontSize: 20,
            fontFamily: fontFamily,
            color: textColor,
          ),
        ),
      ),
    );
  }
}
