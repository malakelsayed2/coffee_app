import 'package:coffee_app/core/resources/Models/route_manager.dart';
import 'package:coffee_app/screens/home_screen.dart';
import 'package:flutter/material.dart';

class CoffeeApp extends StatelessWidget {
  const CoffeeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: RouteManager.routes,
      initialRoute: RouteStringManager.homeScreen,
    );
  }
}
