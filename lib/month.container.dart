import 'package:flutter/material.dart';

/// A widget that displays a month inside a styled container.
///
/// This container is designed to be used in a month-picker dialog, providing
/// a visually distinct selection with customizable colors and text styles.
class MonthContainer extends StatelessWidget {
  /// Creates a [MonthContainer] with the specified properties.
  ///
  /// The [month], [fillColor], [borderColor], and [textColor] parameters are required.
  const MonthContainer({
    Key? key,
    required this.month,
    required this.fillColor,
    required this.borderColor,
    required this.textColor,
    required this.textStyle,
  }) : super(key: key);

  /// The name of the month displayed inside the container (e.g., "Jan", "Feb").
  final String month;

  /// The background color of the container.
  final Color fillColor;

  /// The border color of the container.
  final Color borderColor;

  /// The text color for the month name.
  final Color textColor;

  /// The text style applied to the month name. If null, a default style is used.
  final TextStyle? textStyle;

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
          style: textStyle ??
              TextStyle(
                fontSize: 20,
                color: textColor,
              ),
        ),
      ),
    );
  }
}
