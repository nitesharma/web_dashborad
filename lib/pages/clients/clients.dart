import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_dashboard/constants/controller.dart';
import 'package:web_dashboard/helpers/responsive.dart';
import 'package:web_dashboard/widgets/custom_text.dart';

class ClientsPage extends StatelessWidget {
  const ClientsPage({Key? key}) : super(key: key);

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
            ))
      ],
    );
  }
}
