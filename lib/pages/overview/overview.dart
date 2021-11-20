import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_dashboard/constants/controller.dart';
import 'package:web_dashboard/helpers/responsive.dart';
import 'package:web_dashboard/pages/overview/widgets/overview_cards_large.dart';
import 'package:web_dashboard/pages/overview/widgets/overview_cards_medium.dart';
import 'package:web_dashboard/widgets/custom_text.dart';

import 'widgets/overview_cards_small.dart';

class OverviewPage extends StatelessWidget {
  const OverviewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Obx(() => Row(
              children: [
                Container(
                    margin: EdgeInsets.only(
                        top: ResponsiveWidget.isSmallScreen(context) ? 56 : 6),
                    child: Customtext(
                      title: menuController.activeItem.value,
                      size: 24,
                      fontWeight: FontWeight.bold,
                    ))
              ],
            )),
        Expanded(
          child: ListView(children: [
            if (ResponsiveWidget.isLargeScreen(context) ||
                ResponsiveWidget.isMediumScreen(context))
              if (ResponsiveWidget.isCustomSize(context))
                const OverviewCardsMediumScreen()
              else
                const OverViewCardsLargeScreen()
            else
              const OverviewCardsSmallScreen()
          ]),
        )
      ],
    );
  }
}
