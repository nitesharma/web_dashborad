import 'package:flutter/material.dart';
import 'package:web_dashboard/constants/style.dart';
import 'package:web_dashboard/pages/overview/widgets/line_chart.dart';
import 'package:web_dashboard/widgets/custom_text.dart';

import 'revenue_info.dart';

class RevenueSectionSmall extends StatelessWidget {
  const RevenueSectionSmall({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      margin: const EdgeInsets.symmetric(vertical: 30),
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                offset: const Offset(0, 6),
                blurRadius: 12,
                color: lightGrey.withOpacity(.1))
          ],
          borderRadius: BorderRadius.circular(8.0),
          border: Border.all(color: lightGrey, width: .5)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            height: 260,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Customtext(
                  title: 'Revenue Chart',
                  size: 20,
                  fontWeight: FontWeight.bold,
                  color: lightGrey,
                ),
                SizedBox(
                  width: 600,
                  height: 200,
                  child: SimpleTimeSeriesChart.withSampleData(),
                )
              ],
            ),
          ),
          Container(
            height: 1,
            width: 200,
            color: lightGrey,
          ),
          SizedBox(
            height: 260,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: const [
                    RevenueInfo(title: 'Today\'s revenue', value: '250'),
                    RevenueInfo(title: 'Last 7 days', value: '550'),
                  ],
                ),
                //  /
                Row(
                  children: const [
                    RevenueInfo(title: 'Last 30 days', value: '1,450'),
                    RevenueInfo(title: 'Last 12 months', value: '6,320'),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
