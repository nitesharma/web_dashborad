import 'package:flutter/material.dart';
import 'package:web_dashboard/pages/overview/widgets/inf0_card_small.dart';

class OverviewCardsSmallScreen extends StatelessWidget {
  const OverviewCardsSmallScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    return SizedBox(
      height: 400,
      child: Column(
        children: [
          InfoCardSmall(
            title: "Rides in progress",
            onTap: () {},
            value: '8',
          ),
          SizedBox(
            height: _width / 64,
          ),
          InfoCardSmall(
            title: "Packaged delivered",
            onTap: () {},
            value: '20',
          ),
          SizedBox(
            height: _width / 64,
          ),
          InfoCardSmall(
            title: "Cancelled deliveries",
            onTap: () {},
            value: '2',
          ),
          SizedBox(
            height: _width / 64,
          ),
          InfoCardSmall(
            title: "Scheduled deliveries",
            onTap: () {},
            value: '5',
          ),
        ],
      ),
    );
  }
}
