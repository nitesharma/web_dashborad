import 'package:flutter/material.dart';
import 'package:web_dashboard/constants/style.dart';

class InfoCard extends StatelessWidget {
  const InfoCard(
      {Key? key,
      required this.title,
      this.topColor,
      required this.onTap,
      required this.value,
      this.isActive = false})
      : super(key: key);

  final String title;
  final Color? topColor;
  final VoidCallback onTap;
  final String value;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: () {},
        child: Container(
          height: 136,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    offset: const Offset(0, 6),
                    blurRadius: 12,
                    color: lightGrey.withOpacity(.1)),
              ],
              borderRadius: BorderRadius.circular(8)),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                      child: Container(
                    height: 5,
                    color: topColor ?? active,
                  ))
                ],
              ),
              Expanded(child: Container()),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: '$title\n',
                      style: TextStyle(
                          fontSize: 16, color: isActive ? active : lightGrey),
                    ),
                    TextSpan(
                      text: value,
                      style: TextStyle(
                          fontSize: 40, color: isActive ? active : dark),
                    ),
                  ],
                ),
              ),
              Expanded(child: Container())
            ],
          ),
        ),
      ),
    );
  }
}
