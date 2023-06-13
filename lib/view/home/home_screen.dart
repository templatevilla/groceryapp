import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:new_grocery_app/util/color_category.dart';
import 'package:new_grocery_app/util/constant.dart';
import 'package:new_grocery_app/util/constant_widget.dart';
import 'package:new_grocery_app/util/images.dart';
import 'package:new_grocery_app/view/home/model_data/home_data.dart';

import '../../generated/l10n.dart';
import '../../routes/app_routes.dart';
import 'models/home_data_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController searchController = TextEditingController();
  List<CategoryData> category = HomeData.getCategory();

  @override
  Widget build(BuildContext context) {
    Constant.setupSize(context);
    return Column(
      children: [
        getVerSpace(21.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            getCustomFont(S.of(context).selectCategories, 24.sp, regularBlack, 1,
                fontWeight: FontWeight.w700),
            getAssetImage(GetImages.userImage, height: 40.h, width: 40.h)
          ],
        ).paddingSymmetric(horizontal: 20.h),
        getVerSpace(29.h),
        getSearchField(S.of(context).searchCategories, searchController)
            .paddingSymmetric(horizontal: 20.h),
        getVerSpace(24.h),
        Expanded(
          child: GridView.builder(
            padding: EdgeInsets.symmetric(horizontal: 20.h),
            itemCount: category.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: category.length < 2 ? 1 : 2,
                mainAxisExtent: 182.h,
                mainAxisSpacing: 16.h,
                crossAxisSpacing: 16.h),
            itemBuilder: (context, index) {
              CategoryData data = category[index];
              return GestureDetector(
                onTap: (){
                  Constant.sendToNext(context, Routes.fruitScreenRoute);
                },
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16.h),
                      color: data.catBgColor),
                  child: Stack(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          getVerSpace(16.h),
                          getCustomFont(data.title!, 20.sp, regularBlack, 1,fontWeight: FontWeight.w600),
                          getCustomFont("${data.itemCount!} items", 14.sp, grayColor, 1,fontWeight: FontWeight.w400),
                        ],
                      ),
                      Align(alignment: Alignment.bottomCenter,child: getAssetImage(data.image!,height: 120.h,width: double.infinity)).paddingOnly(bottom: 8.h)
                    ],
                  ).paddingSymmetric(horizontal: 16.h),
                ),
              );
            },
          ),
        ),
        getVerSpace(16.h)
      ],
    );
  }
}
