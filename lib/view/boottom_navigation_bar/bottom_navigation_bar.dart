import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:new_grocery_app/util/icons.dart';

import '../../generated/l10n.dart';
import '../../util/color_category.dart';
import '../../util/constant.dart';
import '../../util/constant_widget.dart';

import '../home/home_screen.dart';
import 'controller/home_main_screen_controller.dart';


class HomeMainScreen extends StatefulWidget {
  const HomeMainScreen({Key? key}) : super(key: key);

  @override
  State<HomeMainScreen> createState() => _HomeMainScreenState();
}

class _HomeMainScreenState extends State<HomeMainScreen> {
  closeApp() {
    Future.delayed(const Duration(milliseconds: 1000), () {
      SystemNavigator.pop();
    });
  }
  HomeMainScreenController homeMainScreenController =
  Get.put(HomeMainScreenController());

  @override
  Widget build(BuildContext context) {
    Constant.setupSize(context);
    return WillPopScope(
        onWillPop: () async {
          closeApp();
          return false;
        },
        child: GetBuilder<HomeMainScreenController>(
          init: HomeMainScreenController(),
          builder: (homeMainScreenController) => Scaffold(
            backgroundColor: Colors.white,
            body: SafeArea(
              child: _body(),
            ),
            bottomNavigationBar: Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(offset: Offset(0, 0),
                  blurRadius: 11,
                  color: regularBlack.withOpacity(0.08))
                ],
                color: regularWhite
              ),
                child: BottomNavigationBar(
                    selectedFontSize: 0,
                    unselectedFontSize: 0,
                    backgroundColor: regularWhite,
                    currentIndex: homeMainScreenController.position.value,
                    onTap: (index) {
                      // setState(() {
                      //   currentvalue = index;
                      // });
                      homeMainScreenController.onChange(index);
                    },
                    type: BottomNavigationBarType.fixed,
                    items: [
                      BottomNavigationBarItem(
                          activeIcon: Container(
                              height: 50.h,width: 50.h,decoration:
                          BoxDecoration(
                              color:buttonColor,
                              shape: BoxShape.circle
                          ),child: getSvgImage(GetIcons.homerIconselected,height: 24.h,width: 24.h).paddingAll(13.h)).paddingSymmetric(vertical: 25.h),
                          icon:  getSvgImage(GetIcons.homerIconUnselected,height: 24.h,width: 24.h),
                          label: ''),
                      BottomNavigationBarItem(
                          activeIcon: Container(
                              height: 50.h,width: 50.h,decoration:
                          BoxDecoration(
                              color: buttonColor,
                              shape: BoxShape.circle
                          ),child: getSvgImage(GetIcons.smsIcon,height: 24.h,width: 24.h,color: regularWhite).paddingAll(13.h)).paddingSymmetric(vertical: 25.h),
                          icon:
                          getSvgImage(GetIcons.smsIcon,height: 24.h,width: 24.h),
                          label: ''),
                      BottomNavigationBarItem(
                          activeIcon: Container(
                              height: 50.h,width: 50.h,decoration:
                          BoxDecoration(
                              color: buttonColor,
                              shape: BoxShape.circle
                          ),child: getSvgImage(GetIcons.mailIcon,height: 24.h,width: 24.h,color: regularWhite).paddingAll(13.h)).paddingSymmetric(vertical: 25.h),
                          icon:
                          getSvgImage(GetIcons.mailIcon,height: 24.h,width: 24.h).paddingAll(9.h),
                          label: ''),
                      BottomNavigationBarItem(
                        activeIcon: Container(
                            height: 50.h,width: 50.h,decoration:
                        BoxDecoration(
                            color:buttonColor,
                            shape: BoxShape.circle
                        ),child: getSvgImage(GetIcons.userIcon,height: 24.h,width: 24.h,color: regularWhite).paddingAll(13.h)).paddingSymmetric(vertical: 25.h),
                        icon: getSvgImage(GetIcons.userIcon,height: 24.h,width: 24.h).paddingAll(9.h),
                        label: '',
                      ),
                    ])),
          ),
        ));
  }

  _body() {
    switch (homeMainScreenController.position.value) {
      case 0:
        return HomeScreen();
      case 1:
        return HomeScreen();
    //FavouriteItemScreen();

      case 2:
        return HomeScreen();
    //NoCartItemScreen();
      case 3:
        return HomeScreen();
      default:
        return  Center(
          child: getCustomFont(S.of(context).inavalid, 16.sp, regularBlack, 1,fontWeight: FontWeight.w700),
        );
    }
  }
}
