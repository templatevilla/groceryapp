import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'dart:ui' as ui;

class Constant {
  static String assetImagePath = "assets/images/";
  static const String fontsFamily = "Plus Jakarta Sans";
  static const double defScreenWidth = 414;
  static const double defScreenHeight = 896;

  static void setupSize(BuildContext context,
      {double width = defScreenWidth, double height = defScreenHeight}) {
    ScreenUtil.init(context,
        designSize: Size(width, height), minTextAdapt: true);
  }

  static backToPrev(BuildContext context) {
    Get.back();
  }

  static Future<ui.Image> getImage(String name) {
    final Image image =
        Image(image: AssetImage(Constant.assetImagePath + name));

    Completer<ui.Image> completer = Completer<ui.Image>();
    image.image
        .resolve(const ImageConfiguration())
        .addListener(ImageStreamListener((ImageInfo image, bool _) {
      completer.complete(image.image);
    }));
    return completer.future;
  }

  static getCurrency(BuildContext context) {
    return "ETH";
  }

  static sendToNext(BuildContext context, String route, {Object? arguments}) {
    if (arguments != null) {
      Get.toNamed(route, arguments: arguments);
    } else {
      Get.toNamed(route);
    }
  }

  static sendToNextWithBackResult(
      BuildContext context, String route, ValueChanged<dynamic> fun,
      {Object? arguments}) {
    if (arguments != null) {
      Get.toNamed(route, arguments: arguments)!.then((value) {
        fun(value);
      });
    } else {
      Get.toNamed(route)!.then((value) {
        fun(value);
      });
    }
  }

  static double getToolbarHeight(BuildContext context) {
    return MediaQuery.of(context).padding.top + kToolbarHeight;
  }

  static double getToolbarTopHeight(BuildContext context) {
    return MediaQuery.of(context).padding.top;
  }

  static sendToScreen(
      Widget widget, BuildContext context, ValueChanged<dynamic> setChange) {
    Get.to(() => widget)!.then(setChange);
  }

  static backToFinish() {
    Get.back();
  }

  static formatTime(Duration d) =>
      d.toString().split('.').first.padLeft(8, "0");

  static closeApp() {
    Future.delayed(const Duration(milliseconds: 1000), () {
      SystemNavigator.pop();
    });
  }
}
