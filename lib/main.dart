import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';
import 'package:new_grocery_app/routes/app_pages.dart';

import 'generated/l10n.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        S.delegate,
        // GlobalMaterialLocalizations.delegate,
        //
        // GlobalWidgetsLocalizations.delegate,
        //
        //
        // GlobalWidgetsLocalizations.delegate,
        // DefaultWidgetsLocalizations.delegate,

        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      theme:  ThemeData(useMaterial3: true,dialogBackgroundColor: Colors.white),
      initialRoute: "/",
      routes: AppPages.routes,
    );
  }
}

