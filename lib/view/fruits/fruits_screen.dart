import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:new_grocery_app/util/constant.dart';
import 'package:new_grocery_app/util/icons.dart';

import '../../generated/l10n.dart';
import '../../util/color_category.dart';
import '../../util/constant_widget.dart';
import 'model/fruit_data_model.dart';
import 'model_data/fruit_data.dart';

class FruitScreen extends StatefulWidget {
  const FruitScreen({Key? key}) : super(key: key);

  @override
  State<FruitScreen> createState() => _FruitScreenState();
}

class _FruitScreenState extends State<FruitScreen> {
  TextEditingController searchController = TextEditingController();
  List<Fruit> fruit = FruitData.getFryuitData();
  @override
  Widget build(BuildContext context) {
    Constant.setupSize(context);
    return WillPopScope(
      onWillPop: ()async{
        Constant.backToPrev(context);
        return false;
      },
      child: Scaffold(
        backgroundColor: bgColor,
        body: SafeArea(child: Column(
          children: [
            getVerSpace(16.h),
            Row(
              children: [
                getSvgImage(GetIcons.backArrowIcon),
                getHorSpace(16.h),
                getCustomFont(S.of(context).fruits, 24.sp, regularBlack, 1,
                    fontWeight: FontWeight.w700),
              ],
            ).paddingSymmetric(horizontal: 20.h),
            getVerSpace(29.h),
            getSearchField(S.of(context).searchFruits, searchController)
                .paddingSymmetric(horizontal: 20.h),

            Expanded(
              child: GridView.builder(
                padding: EdgeInsets.only(top: 24.h,left: 20.h,right: 20.h,bottom: 16.h),
                itemCount: fruit.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: fruit.length < 2 ? 1 : 2,
                    mainAxisExtent: 211.h,
                    mainAxisSpacing: 16.h,
                    crossAxisSpacing: 16.h),
                itemBuilder: (context, index) {
                  Fruit data = fruit[index];
                  return Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, 2),
                          blurRadius: 23,
                          color: regularBlack.withOpacity(0.07)
                        )
                      ],
                        borderRadius: BorderRadius.circular(16.h),
                        color: regularWhite),
                    child: Stack(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            getVerSpace(16.h),
                            getAssetImage(data.image!,height: 109.h,width: double.infinity),
                            getCustomFont(data.name!, 16.sp, regularBlack, 1,fontWeight: FontWeight.w600),
                            getVerSpace(4.h),
                            getCustomFont(
                                "${data.weight!} KG", 12.sp, grayColor, 1,fontWeight: FontWeight.w400),
                            getVerSpace(8.h),
                            getCustomFont(data.price!, 18.sp, regularBlack, 1,fontWeight: FontWeight.w600),
                          ],
                        ).paddingSymmetric(horizontal: 16.h),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Container(

                            height: 40.h,
                              width: 40.h,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(16.h),
                            color: buttonColor),
                            child: getSvgImage(GetIcons.addIcon).paddingAll(8.h),
                          ),
                        ).paddingOnly(bottom: 16.h,right: 16.h)
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        )),
      ),
    );
  }
}
