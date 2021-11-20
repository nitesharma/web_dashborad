import 'package:flutter/material.dart';
import 'package:web_dashboard/widgets/custom_text.dart';

class ClientsPage extends StatelessWidget {
  const ClientsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Customtext(title: 'Clients'),
    );
  }
}
