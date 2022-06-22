import 'package:app_apprecio/app/router/app_router.dart';
import 'package:app_apprecio/app/ui/android/details/detail_page.dart';
import 'package:app_apprecio/app/ui/android/home/home_page.dart';
import 'package:app_apprecio/app/ui/android/widget/custom_bottom_navigator.dart';
import 'package:flutter/material.dart';

Map<String, WidgetBuilder> getApplicationsRoutes() {
  return {
    Routes.INITIAL: (BuildContext context) => CustomBottomNavigation(),
    Routes.HOME: (BuildContext context) => const HomePage(),
    Routes.DETAIL: (BuildContext context) => const DetailPage(),
  };
}
