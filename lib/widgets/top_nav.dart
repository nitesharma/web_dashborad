import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:web_dashboard/constants/style.dart';
import 'package:web_dashboard/helpers/responsive.dart';
import 'package:web_dashboard/widgets/custom_text.dart';

AppBar customNavBar(BuildContext context, GlobalKey<ScaffoldState> key) =>
    AppBar(
      elevation: 0.0,
      backgroundColor: light,
      iconTheme: IconThemeData(color: dark),
      leading: ResponsiveWidget.isSmallScreen(context)
          ? IconButton(
              onPressed: () {
                key.currentState!.openDrawer();
              },
              icon: const Icon(
                Icons.menu,
                color: Colors.black,
              ),
            )
          : Row(
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 14),
                  child: Image.asset(
                    'assets/icons/logo.png',
                    width: 28,
                  ),
                )
              ],
            ),
      title: Row(children: [
        Visibility(
          child: Customtext(
            title: "Dashboard",
            color: lightGrey,
            fontWeight: FontWeight.bold,
            size: 20,
          ),
        ),
        Expanded(child: Container()),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.settings,
            color: dark.withOpacity(0.7),
          ),
        ),
        Stack(
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notifications,
                color: dark.withOpacity(0.7),
              ),
            ),
            Positioned(
              top: 7,
              right: 7,
              child: Container(
                width: 12,
                height: 12,
                padding: const EdgeInsets.all(4.0),
                decoration: BoxDecoration(
                    color: active,
                    border: Border.all(width: 2, color: light),
                    borderRadius: BorderRadius.circular(30)),
              ),
            )
          ],
        ),
        Container(
          width: 1,
          height: 22,
          color: lightGrey,
        ),
        const SizedBox(
          width: 24,
        ),
        Customtext(
          title: 'Nitesh Sharma',
          color: lightGrey,
        ),
        const SizedBox(
          width: 16,
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Container(
            padding: const EdgeInsets.all(2.0),
            margin: const EdgeInsets.all(2.0),
            child: CircleAvatar(
              backgroundColor: light,
              child: Icon(
                Icons.person_outline,
                color: dark,
              ),
            ),
          ),
        ),
      ]),
    );
