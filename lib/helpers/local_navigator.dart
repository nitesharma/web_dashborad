import 'package:flutter/widgets.dart';
import 'package:web_dashboard/constants/controller.dart';
import 'package:web_dashboard/routing/router.dart';
import 'package:web_dashboard/routing/routes.dart';

Navigator localNavigator() => Navigator(
      key: navigationController.navigationKey,
      initialRoute: overviewPageRoute,
      onGenerateRoute: generateRoute,
    );
