import 'package:flutter/material.dart';
import 'package:web_dashboard/widgets/custom_text.dart';

class DriversPage extends StatelessWidget {
  const DriversPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Customtext(title: 'Drivers'),
    );
  }
}
