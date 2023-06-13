import 'package:flutter/material.dart';


import '../view/boottom_navigation_bar/bottom_navigation_bar.dart';
import '../view/fruits/fruits_screen.dart';
import '../view/home/home_screen.dart';
import '../view/onboarding/onboarding_screen.dart';
import 'app_routes.dart';

class AppPages {
  static const initialRoute = Routes.onboardingScreenRoute;
  static Map<String, WidgetBuilder> routes = {
    Routes.onboardingScreenRoute: (context) => const OnboardingScreen(),
    Routes.homeMainScreenRoute: (context) => const HomeMainScreen(),
    Routes.homeScreenRoute: (context) => const HomeScreen(),
    Routes.fruitScreenRoute: (context) => const FruitScreen(),

    // Routes.introRoute: (context) => const IntroScreen(),

  };

}
