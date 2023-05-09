import 'package:asset_manager/api.dart';

import 'controller/recently_views_controller.dart';
import 'package:flutter/material.dart';
import 'package:immo_scanner/core/app_export.dart';
import 'package:immo_scanner/widgets/app_bar/appbar_iconbutton_1.dart';
import 'package:immo_scanner/widgets/app_bar/appbar_subtitle.dart';
import 'package:immo_scanner/widgets/app_bar/custom_app_bar.dart';
import 'package:immo_scanner/widgets/custom_button.dart';
import 'package:immo_scanner/widgets/custom_icon_button.dart';

class RecentlyViewsScreen extends GetWidget<RecentlyViewsController> {
  RecentlyViewsController recentlyViewsController =
      Get.put(RecentlyViewsController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: ColorConstant.gray50,
          appBar: CustomAppBar(
              height: getVerticalSize(40),
              leadingWidth: 64,
              leading: AppbarIconbutton1(
                  svgPath: ImageConstant.imgArrowleft,
                  margin: getMargin(left: 24),
                  onTap: onTapArrowleft20),
              centerTitle: true,
              title: AppbarSubtitle(text: "lbl_recommendations".tr)),
          body: SizedBox(
              width: size.width,
              child: SingleChildScrollView(
                  child: Padding(
                      padding:
                          getPadding(left: 24, top: 32, right: 24, bottom: 5),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            // Row(
                            //     mainAxisAlignment: MainAxisAlignment.center,
                            //     children: [
                            //       CustomButton(
                            //           height: getVerticalSize(40),
                            //           width: getHorizontalSize(92),
                            //           text: "lbl_filter".tr,
                            //           variant: ButtonVariant.OutlineGray300,
                            //           shape: ButtonShape.RoundedBorder5,
                            //           padding: ButtonPadding.PaddingT9,
                            //           fontStyle: ButtonFontStyle
                            //               .ManropeSemiBold14Gray900_1,
                            //           suffixWidget: Container(
                            //               margin: getMargin(left: 10),
                            //               child: CustomImageView(
                            //                   svgPath: ImageConstant
                            //                       .imgMenuGray900))),
                            //       CustomButton(
                            //           height: getVerticalSize(40),
                            //           width: getHorizontalSize(87),
                            //           text: "lbl_sort".tr,
                            //           margin: getMargin(left: 8),
                            //           variant: ButtonVariant.OutlineGray300,
                            //           shape: ButtonShape.RoundedBorder5,
                            //           padding: ButtonPadding.PaddingT9,
                            //           fontStyle: ButtonFontStyle
                            //               .ManropeSemiBold14Gray900_1,
                            //           suffixWidget: Container(
                            //               margin: getMargin(left: 10),
                            //               child: CustomImageView(
                            //                   svgPath: ImageConstant.imgSort))),
                            //       Spacer(),
                            //       Padding(
                            //           padding: getPadding(top: 10, bottom: 9),
                            //           child: Obx(
                            //             () => Text(
                            //                 (recentlyViewsController.count.value
                            //                     .toString()),
                            //                 overflow: TextOverflow.ellipsis,
                            //                 textAlign: TextAlign.left,
                            //                 style: AppStyle
                            //                     .txtManropeSemiBold14Gray900),
                            //           ))
                            //     ]),
                            Obx(() => ListView.builder(
                                shrinkWrap: true,
                                physics: NeverScrollableScrollPhysics(),
                                itemCount:
                                    recentlyViewsController.assetList.length,
                                itemBuilder: (context, index) {
                                  return getListElement(
                                      recentlyViewsController.assetList[index]);
                                }))
                          ]))))),
    );
  }

  onTapArrowleft20() {
    Get.back();
  }

  getListElement(Asset asset) {
    return Column(children: [
      Container(
          height: getVerticalSize(180),
          width: getHorizontalSize(327),
          margin: getMargin(top: 24),
          child: Stack(alignment: Alignment.topRight, children: [
            CustomImageView(
                imagePath: ImageConstant.imgImg418x3271,
                height: getVerticalSize(180),
                width: getHorizontalSize(327),
                radius: BorderRadius.circular(getHorizontalSize(10)),
                alignment: Alignment.center),
            CustomIconButton(
                height: 36,
                width: 36,
                margin: getMargin(top: 16, right: 16),
                variant: IconButtonVariant.OutlineBluegray50_1,
                alignment: Alignment.topRight,
                child: CustomImageView(svgPath: ImageConstant.imgClock))
          ])),
      Column(children: [
        Padding(
          padding: const EdgeInsets.only(top: 5.0),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text(asset.title ?? "",
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtManropeExtraBold18
                    .copyWith(letterSpacing: getHorizontalSize(0.2))),
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Text("lbl_price".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.right,
                  style: AppStyle.txtManrope12
                      .copyWith(letterSpacing: getHorizontalSize(0.4))),
            ),
          ]),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 5.0),
          child: Row(children: [
            Padding(
              padding: const EdgeInsets.only(right: 5.0),
              child: CustomImageView(
                  svgPath: ImageConstant.imgLocation,
                  height: getSize(14),
                  width: getSize(14),
                  margin: getMargin(bottom: 2)),
            ),
            Text(asset.region ?? "",
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtManrope12
                    .copyWith(letterSpacing: getHorizontalSize(0.4))),
            Spacer(),
            Text(asset.price.toString() + " €",
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtManropeExtraBold18Blue500
                    .copyWith(letterSpacing: getHorizontalSize(0.2)))
          ]),
        ),
      ]),
      SizedBox(
        height: getVerticalSize(5)
      )
    ]);
  }
}
