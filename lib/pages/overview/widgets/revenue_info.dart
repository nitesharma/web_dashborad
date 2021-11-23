import 'package:flutter/material.dart';
import 'package:web_dashboard/constants/style.dart';

class RevenueInfo extends StatelessWidget {
  final String title;
  final String value;
  const RevenueInfo({Key? key, required this.title, required this.value})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          children: [
            TextSpan(
              text: '$title\n\n',
              style: TextStyle(
                fontSize: 16,
                color: lightGrey,
              ),
            ),
            TextSpan(
              text: '\$ $value\n',
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }
}
