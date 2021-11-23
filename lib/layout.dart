import 'package:flutter/material.dart';
import 'package:web_dashboard/helpers/responsive.dart';
import 'package:web_dashboard/widgets/large_screen.dart';
import 'package:web_dashboard/widgets/side_menu.dart';
import 'package:web_dashboard/widgets/top_nav.dart';

import 'helpers/local_navigator.dart';

class CustomLayout extends StatelessWidget {
  final GlobalKey<ScaffoldState> globalKey = GlobalKey();

  CustomLayout({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: globalKey,
        extendBodyBehindAppBar: true,
        appBar: customNavBar(context, globalKey),
        drawer: const Drawer(
          child: SideMenu(),
        ),
        body: ResponsiveWidget(
            largeScreen: const LargeScreen(),
            smallScreen: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: localNavigator(),
            )));
  }
}
