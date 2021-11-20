import 'package:flutter/material.dart';

import 'info_card.dart';

class OverviewCardsMediumScreen extends StatelessWidget {
  const OverviewCardsMediumScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
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
          ],
        ),
        const SizedBox(
          height: 16,
        ),
        Row(
          children: [
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
        )
      ],
    );
  }
}
