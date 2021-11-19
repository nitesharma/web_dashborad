import 'package:flutter/material.dart';

class Customtext extends StatelessWidget {
  const Customtext(
      {Key? key,
      this.color,
      this.size,
      this.fontWeight,
      required this.title,
      this.textSpacing})
      : super(key: key);

  final Color? color;
  final double? size;
  final FontWeight? fontWeight;
  final String title;
  final double? textSpacing;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontSize: size ?? 16.0,
        fontWeight: fontWeight ?? FontWeight.normal,
        color: color ?? Colors.black,
        letterSpacing: textSpacing ?? 1.0,
      ),
    );
  }
}
