import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:practice/src/routing/app_route_constants.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
            child: Text("Home Page"),
          ),
          ElevatedButton(
            onPressed: () {
              context.goNamed(MyAppRouteConstants.profileRouteName);
            },
            child: const Text("Profile"),
          ),
          ElevatedButton(
            onPressed: () {
              context.goNamed(MyAppRouteConstants.aboutRouteName);
            },
            child: const Text("About"),
          ),
          ElevatedButton(
            onPressed: () {
              context.goNamed(MyAppRouteConstants.contactUsRouteName);
            },
            child: const Text("Contact Us"),
          ),
        ],
      ),
    );
  }
}
