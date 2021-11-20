import 'package:flutter/material.dart';
import 'package:web_dashboard/helpers/responsive.dart';
import 'package:web_dashboard/widgets/large_screen.dart';
import 'package:web_dashboard/widgets/side_menu.dart';
import 'package:web_dashboard/widgets/smaal_screen.dart';
import 'package:web_dashboard/widgets/top_nav.dart';

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
      body: const ResponsiveWidget(
        largeScreen: LargeScreen(),
        smallScreen: SmallScreen(),
      ),
    );
  }
}
