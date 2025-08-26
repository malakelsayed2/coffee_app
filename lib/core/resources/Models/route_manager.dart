import 'package:coffee_app/screens/drink_details_screen.dart';
import 'package:coffee_app/screens/home_screen.dart';
import 'package:coffee_app/screens/splash_screen.dart';
import 'package:flutter/cupertino.dart';

class RouteManager {
  static Map<String , WidgetBuilder> routes = {
    RouteStringManager.splashScreen : (context) => SplashScreen(),
    RouteStringManager.homeScreen: (context) => HomeScreen(),
    RouteStringManager.drinkDetailsScreen : (context) => DrinkDetailsScreen(),

  } ;
}

class RouteStringManager{
  static String splashScreen = 'splashScreen' ;
  static String homeScreen = 'homeScreen' ;
  static String drinkDetailsScreen = 'drinkDetailsScreen' ;

}