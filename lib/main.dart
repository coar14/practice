import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:practice/src/routing/app_route_config.dart';

void main() {
  final MyAppRouter myAppRouter = MyAppRouter();
  runApp(MyApp(router: myAppRouter.router));
}

class MyApp extends StatelessWidget {
  final GoRouter router;

  const MyApp({Key? key, required this.router}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routeInformationParser: router.routeInformationParser,
      routerDelegate: router.routerDelegate,
      routeInformationProvider: router.routeInformationProvider,
    );
  }
}
