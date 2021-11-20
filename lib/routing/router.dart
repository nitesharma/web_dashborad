import 'package:flutter/material.dart';
import 'package:web_dashboard/pages/clients/clients.dart';
import 'package:web_dashboard/pages/drivers/drivers.dart';
import 'package:web_dashboard/pages/overview/overview.dart';

import 'routes.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case overviewPageDisplayName:
      return _getPageRoute(const OverviewPage());
    case driversPageDisplayName:
      return _getPageRoute(const DriversPage());
    case clientsPageDisplayName:
      return _getPageRoute(const ClientsPage());
    default:
      return _getPageRoute(const OverviewPage());
  }
}

PageRoute _getPageRoute(Widget child) {
  return MaterialPageRoute(builder: (context) => child);
}
