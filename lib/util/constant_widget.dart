import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import 'color_category.dart';
import 'constant.dart';

Widget getAssetImage(String image,
    {double? width,
    double? height,
    Color? color,
    BoxFit boxFit = BoxFit.contain}) {
  return Image.asset(
    Constant.assetImagePath + image,
    color: color,
    width: width,
    height: height,
    fit: boxFit,
  );
}

Widget getSvgImage(String image,
    {double? width,
    double? height,
    Color? color,
    BoxFit boxFit = BoxFit.contain}) {
  return SvgPicture.asset(
    Constant.assetImagePath + image,
    // ignore: deprecated_member_use
    color: color,
    width: width,
    height: height,
    fit: boxFit,
  );
}

Widget getVerSpace(double verSpace) {
  return SizedBox(
    height: verSpace,
  );
}

Widget getHorSpace(double verSpace) {
  return SizedBox(
    width: verSpace,
  );
}

Widget getCustomFont(String text, double fontSize, Color fontColor, int maxLine,
    {String fontFamily = Constant.fontsFamily,
    TextOverflow overflow = TextOverflow.ellipsis,
    TextDecoration decoration = TextDecoration.none,
    FontWeight fontWeight = FontWeight.normal,
    TextAlign textAlign = TextAlign.start,
    txtHeight,List<FontFeature>? fontFeatures}) {
  return Text(
    text,
    overflow: overflow,
    style: TextStyle(
        decoration: decoration,
        fontSize: fontSize,
        fontStyle: FontStyle.normal,
        color: fontColor,
        fontFamily: fontFamily,
        height: txtHeight,
        fontWeight: fontWeight,
    fontFeatures:  fontFeatures),
    maxLines: maxLine,
    softWrap: true,
    textAlign: textAlign,
  );
}

Widget getButton(BuildContext context, Color bgColor, String text,
    Color textColor, Function function, double fontsize,
    {bool isBorder = false,
    EdgeInsetsGeometry? insetsGeometry,
    borderColor = Colors.transparent,
    FontWeight weight = FontWeight.w500,
    bool isIcon = false,
    String? image,
    Color? imageColor,
    double? imageWidth,
    double? imageHeight,
    bool smallFont = false,
    double? buttonHeight,
    double? buttonWidth,
    List<BoxShadow> boxShadow = const [],
    EdgeInsetsGeometry? insetsGeometrypadding,
    BorderRadius? borderRadius,
    double? borderWidth}) {
  return InkWell(
    onTap: () {
      function();
    },
    child: Container(
      margin: insetsGeometry,
      padding: insetsGeometrypadding,
      width: buttonWidth,
      height: buttonHeight??56.h,
      decoration: getButtonDecoration(
        buttonColor,
        borderRadius: borderRadius,
        shadow: boxShadow,
        border: (isBorder)
            ? Border.all(color: borderColor, width: borderWidth!)
            : null,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          (isIcon)
              ? getSvgImage(image!, width: 24.h, height: 24.h)
              : getHorSpace(0),
          (isIcon) ? getHorSpace(12.h) : getHorSpace(0),
          getCustomFont(text, fontsize, textColor, 1,
              textAlign: TextAlign.center,
              fontWeight: weight,
              fontFamily: Constant.fontsFamily)
        ],
      ),
    ),
  );
}

BoxDecoration getButtonDecoration(Color bgColor,
    {BorderRadius? borderRadius,
    Border? border,
    List<BoxShadow> shadow = const [],
    DecorationImage? image}) {
  return BoxDecoration(
      color: bgColor,
      borderRadius: borderRadius,
      border: border,
      boxShadow: shadow,
      image: image);
}


Widget getMultilineCustomFont(String text, double fontSize, Color fontColor,
    {String fontFamily = Constant.fontsFamily,
    TextOverflow overflow = TextOverflow.ellipsis,
    TextDecoration decoration = TextDecoration.none,
    FontWeight fontWeight = FontWeight.normal,
    TextAlign textAlign = TextAlign.start,
    txtHeight = 1.0}) {
  return Text(
    text,
    style: TextStyle(
        decoration: decoration,
        fontSize: fontSize,
        fontStyle: FontStyle.normal,
        color: fontColor,
        fontFamily: fontFamily,
        height: txtHeight,
        fontWeight: fontWeight),
    textAlign: textAlign,
  );
}
Widget getSearchField(String? text, controller,
    {Function? function,
      bool autofocus = false,
      Color? hinttextcolor,
      double? hinttextsize,
      FontWeight? fontweight,
      String? prefixiconimage,
      double? prefixiconimageheight,
      double? prefixiconimagewidth,
      ValueChanged<String>? onFieldSubmitted,
      textInputAction}) {
  return TextFormField(

      controller: controller,
      textInputAction: textInputAction ?? TextInputAction.none,
      onFieldSubmitted: onFieldSubmitted,
      cursorColor: buttonColor,
      decoration: InputDecoration(

          focusedBorder: OutlineInputBorder(
              borderSide:
              BorderSide(color: buttonColor, width: 1.h),
              borderRadius: BorderRadius.circular(18.h)),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(18.h),
              borderSide: BorderSide(color: textFieldBg, width: 0)),
          filled: true,
          contentPadding: EdgeInsets.symmetric(vertical: 16.h),
          fillColor: textFieldBg,
          hintText: text,
          hintStyle: TextStyle(
              color: hinttextcolor ?? grayColor,
              fontSize: hinttextsize ?? 16.sp,
              fontFamily: Constant.fontsFamily,
              fontWeight: fontweight ?? FontWeight.w400),
          prefixIcon: Padding(
            padding: EdgeInsets.only(
                top: 16.h, left: 16.h, bottom: 16.h, right: 12.h),
            child: getSvgImage(
              "search_icon.svg",
              height: prefixiconimageheight ?? 24.h,
              width: prefixiconimagewidth ?? 24.h,
            ),
          ),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16.h),
              borderSide: BorderSide(color: Colors.transparent, width: 0))));
}



Widget getAppBar(String title, GestureTapCallback? function) {
  return Row(
    children: [
      GestureDetector(
          onTap: function,
          child: getSvgImage("back.svg", width: 20.h, height: 20.h)),
      getHorSpace(12.h),
      getCustomFont(title, 20.sp, Colors.black, 1, fontWeight: FontWeight.w700,txtHeight: 1.5.h)
    ],
  );
}

Widget getHomeAppBar(String image,String title,{Widget? widget,Function? function,Function? suffixfunction,double? titlefontsize}){
  return  Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Row(
        children: [
          GestureDetector(onTap:(){
            function!();
  },child: getSvgImage(image)),
          getHorSpace(15.13.w),
          getCustomFont(title,titlefontsize?? 18.sp,  Colors.black, 1,fontWeight: FontWeight.w600)
        ],
      ),
      GestureDetector(
        onTap: (){
          suffixfunction!();
        },
        child: widget??Container(
          height: 40.h,
          width: 40.w,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                  offset:Offset(-4, 5),
                  blurRadius: 11,
                  color: Color(0XFF819498).withOpacity(0.14)

              )
            ],
            color: Colors.white,
          ),
          child:widget

        ),
      )
    ],
  );
}



Widget getDetailFacelity(String iconImage,String text,{double? containerHeight, double? containerWidth,bool superScript=false}){
  return  Container(
    height:containerHeight?? 40.h,
    width: containerWidth??61.w,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.h),
        color: Color(0XFFFFFFFF),
        boxShadow: [
          BoxShadow(offset: Offset(-4, 5),
              color: Color(0XFF819498).withOpacity(0.14),
              blurRadius: 11)
        ]
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        getSvgImage(iconImage,height: 14.67.h,width: 16.w),
       Row(
         children: [
           getCustomFont(text, 14.sp, regularBlack, 1,fontWeight: FontWeight.w400),
           superScript? getCustomFont("2", 14.sp, regularBlack, 1,fontWeight: FontWeight.w400,fontFeatures: [FontFeature.superscripts()]):SizedBox(),
         ],
       )
      ],
    ).paddingSymmetric(horizontal: 12.w),
  );
}


