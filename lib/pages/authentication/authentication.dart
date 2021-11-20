import 'package:flutter/material.dart';
import 'package:web_dashboard/widgets/custom_text.dart';

class AuthenticationPage extends StatelessWidget {
  const AuthenticationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Customtext(title: 'Authentication'),
    );
  }
}
