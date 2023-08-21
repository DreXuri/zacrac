import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:zacrac/core/widgets/nav_bar.dart';
import 'package:zacrac/features/home/view/home_page.dart';

import '../features/auth/view/auth.dart';
import '../features/others/view/others_page.dart';
import '../features/settings/view/settings.dart';
import '../features/this_month/view/this_month_page.dart';

Route? onGenerateRoutes(RouteSettings settings) {
  switch (settings.name) {

    case AuthScreen.route:
      return PageTransition(
        child: const AuthScreen(),
        type: PageTransitionType.rightToLeft,
      );
    case BottomNav.route:
      return PageTransition(
          child: const BottomNav(), type: PageTransitionType.rightToLeft);

    case Overview.route:
      return PageTransition(
          child:  Overview(), type: PageTransitionType.rightToLeft);

    case Overview.route:
      return MaterialPageRoute(
        settings: settings,
        builder: (_) => Overview(),
      );
    case ThisMonth.route:
      return PageTransition(
          child: const ThisMonth(), type: PageTransitionType.rightToLeft);

    case Others.route:
      return PageTransition(
          child: const Others(), type: PageTransitionType.rightToLeft);

    case Settings.route:
      return PageTransition(
          child: Settings(), type: PageTransitionType.rightToLeft);

    default:
      return MaterialPageRoute(
        settings: settings,
        builder: (_) => const Scaffold(
          body: Center(
            child: Text(
              'Screen does not exist!',
            ),
          ),
        ),
      );
  }
}
