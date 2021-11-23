import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web_dashboard/constants/style.dart';
import 'package:web_dashboard/controllers/menu_controller.dart';
import 'package:web_dashboard/controllers/navigation_controller.dart';
import 'package:web_dashboard/layout.dart';
import 'package:web_dashboard/pages/404/error_page.dart';
import 'package:web_dashboard/pages/authentication/authentication.dart';
import 'package:web_dashboard/pages/clients/clients.dart';
import 'package:web_dashboard/pages/drivers/drivers.dart';
import 'package:web_dashboard/pages/overview/overview.dart';
import 'package:web_dashboard/routing/routes.dart';

void main() {
  Get.put(MenuController());
  Get.put(NavigationController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: authenticationPageRoute,
      unknownRoute: GetPage(
          name: "/not-found",
          page: () => const ErrorPage(),
          transition: Transition.fadeIn),
      getPages: [
        GetPage(name: rootRoute, page: () => CustomLayout()),
        GetPage(
            name: authenticationPageRoute,
            page: () => const AuthenticationPage()),
        GetPage(
          name: overviewPageRoute,
          page: () => const OverviewPage(),
        ),
        GetPage(name: driversPageRoute, page: () => const DriversPage()),
        GetPage(name: clientsPageRoute, page: () => const ClientsPage()),
      ],
      debugShowCheckedModeBanner: false,
      title: 'Dash Board',
      theme: ThemeData(
        scaffoldBackgroundColor: light,
        textTheme: GoogleFonts.mulishTextTheme(
          Theme.of(context).textTheme,
        ).apply(
          bodyColor: Colors.black,
        ),
        pageTransitionsTheme: const PageTransitionsTheme(builders: {
          TargetPlatform.iOS: FadeUpwardsPageTransitionsBuilder(),
          TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
        }),
        primaryColor: Colors.blue,
      ),
      // home: const AuthenticationPage(),
    );
  }
}
