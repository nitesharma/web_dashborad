import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_dashboard/constants/controller.dart';
import 'package:web_dashboard/constants/style.dart';

import 'custom_text.dart';

class VerticalMenuItem extends StatelessWidget {
  const VerticalMenuItem(
      {Key? key, required this.itemName, required this.onTap})
      : super(key: key);

  final String itemName;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      onHover: (value) {
        value
            ? menuController.onHover(itemName)
            : menuController.onHover('Not hovering');
      },
      child: Obx(
        () => Container(
          color: menuController.isHovering(itemName)
              ? lightGrey.withOpacity(0.1)
              : Colors.transparent,
          child: Row(
            children: [
              Visibility(
                visible: menuController.isHovering(itemName) ||
                    menuController.isActive(itemName),
                child: Container(
                  width: 3,
                  height: 72,
                  color: dark,
                ),
                maintainSize: true,
                maintainAnimation: true,
                maintainState: true,
              ),
              Expanded(
                  child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: menuController.returnIconFor(itemName),
                  ),
                  if (!menuController.isActive(itemName))
                    Flexible(
                      child: Customtext(
                        title: itemName,
                        color: menuController.isHovering(itemName)
                            ? dark
                            : lightGrey,
                      ),
                    )
                  else
                    Flexible(
                        child: Customtext(
                      title: itemName,
                      color: dark,
                      size: 18,
                      fontWeight: FontWeight.bold,
                    ))
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
