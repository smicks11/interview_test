// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:interview/presentation/screens/auth/sign_in/sign_in.dart';
import 'package:interview/presentation/screens/home/screens/index.dart';

class Routes {
  static const String homeRoute = "/home";
  static const String signInRoute = "/signIn";
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.homeRoute:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case Routes.signInRoute:
        return MaterialPageRoute(builder: (_) => SignIn());
      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
        builder: (ctx) => const Scaffold(
              body: Center(
                child: Text("Oops seems you are lost, kindly restart the app!"),
              ),
            ));
  }
}
