import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:practice/src/pages/about.dart';
import 'package:practice/src/pages/contact_us.dart';
import 'package:practice/src/pages/error_page.dart';
import 'package:practice/src/pages/home.dart';
import 'package:practice/src/pages/profile.dart';
import 'package:practice/src/routing/app_route_constants.dart';

class MyAppRouter {
  GoRouter router = GoRouter(
      routes: [
        GoRoute(
            name: MyAppRouteConstants.homeRouteName,
            path: '/',
            pageBuilder: (context, state) {
              return const MaterialPage(child: Home());
            }),
        GoRoute(
            name: MyAppRouteConstants.profileRouteName,
            path: '/profile',
            pageBuilder: (context, state) {
              return const MaterialPage(child: Profile());
            }),
        GoRoute(
            name: MyAppRouteConstants.aboutRouteName,
            path: '/about',
            pageBuilder: (context, state) {
              return const MaterialPage(child: About());
            }),
        GoRoute(
            name: MyAppRouteConstants.contactUsRouteName,
            path: '/contact_us',
            pageBuilder: (context, state) {
              return const MaterialPage(child: ContactUs());
            }),
      ],
      errorPageBuilder: (context, state) {
        return const MaterialPage(child: ErrorPage());
      });
}
