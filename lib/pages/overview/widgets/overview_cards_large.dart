import 'package:flutter/material.dart';
import 'package:web_dashboard/pages/overview/widgets/info_card.dart';

class OverViewCardsLargeScreen extends StatelessWidget {
  const OverViewCardsLargeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    return Row(
      children: [
        InfoCard(
          title: "Rides in progress",
          onTap: () {},
          value: '8',
          topColor: Colors.orange,
        ),
        SizedBox(
          width: _width / 64,
        ),
        InfoCard(
          title: "Packaged delivered",
          onTap: () {},
          value: '20',
          topColor: Colors.lightGreen,
        ),
        SizedBox(
          width: _width / 64,
        ),
        InfoCard(
          title: "Cancelled deliveries",
          onTap: () {},
          value: '2',
          topColor: Colors.redAccent,
        ),
        SizedBox(
          width: _width / 64,
        ),
        InfoCard(
          title: "Scheduled deliveries",
          onTap: () {},
          value: '5',
          topColor: Colors.blue,
        ),
      ],
    );
  }
}
