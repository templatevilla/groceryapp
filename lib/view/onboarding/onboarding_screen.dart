import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:new_grocery_app/util/color_category.dart';
import 'package:new_grocery_app/util/constant.dart';
import 'package:new_grocery_app/util/constant_widget.dart';
import 'package:new_grocery_app/util/images.dart';

import '../../generated/l10n.dart';
import '../../routes/app_routes.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    Constant.setupSize(context);
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                    Constant.assetImagePath + GetImages.onboardingImage),
                fit: BoxFit.fill)),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(

                child: getMultilineCustomFont(
                    S.of(context).buyGroceriesEasillyWithUs, 32.sp, regularBlack,
                    fontWeight: FontWeight.w700, textAlign: TextAlign.center,txtHeight: 1.5.h).paddingSymmetric(horizontal: 40.h),
              ),
              getVerSpace(16.h),
              getMultilineCustomFont(
                  S.of(context).weHelpYouToBuyFreshGroceryFromYourHome,
                  16.sp,
                  grayColor,
                  fontWeight: FontWeight.w400,
                  textAlign: TextAlign.center,
              txtHeight: 1.5.h),
              getVerSpace(56.h),
              getButton(context, buttonColor, S.of(context).getStarted, regularWhite, (){
                Constant.sendToNext(context, Routes.homeMainScreenRoute);
              }, 20.sp,weight: FontWeight.w600,buttonWidth: 292.h,borderRadius: BorderRadius.circular(16.h))
            ],
          ).paddingSymmetric(horizontal: 20.h,vertical: 52.h),
        ),
      ),
    );
  }
}
