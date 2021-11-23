import 'package:flutter/material.dart';
import 'package:web_dashboard/constants/style.dart';
import 'package:web_dashboard/pages/overview/widgets/line_chart.dart';
import 'package:web_dashboard/pages/overview/widgets/revenue_info.dart';
import 'package:web_dashboard/widgets/custom_text.dart';

class RevenueSectionLarge extends StatelessWidget {
  const RevenueSectionLarge({Key? key}) : super(key: key);

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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Customtext(
                  title: 'Revenue Chart',
                  color: lightGrey,
                  size: 20,
                  fontWeight: FontWeight.bold,
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
            height: 120,
            width: 1,
            color: lightGrey,
          ),
          Expanded(
            child: Column(
              children: [
                Row(
                  children: const [
                    RevenueInfo(title: 'Today\'s revenue', value: '250'),
                    RevenueInfo(title: 'Last 7 days', value: '550'),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  children: const [
                    RevenueInfo(title: 'Last 30 days', value: '1,450'),
                    RevenueInfo(title: 'Last 12 months', value: '6,320'),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
