import 'package:asset_manager/api.dart';
import 'package:immo_scanner/widgets/custom_icon_button.dart';

import '../home_page/widgets/home_item_widget.dart';
import 'controller/home_controller.dart';
import 'models/home_item_model.dart';
import 'models/home_model.dart';
import 'package:flutter/material.dart';
import 'package:immo_scanner/core/app_export.dart';
import 'package:immo_scanner/widgets/app_bar/appbar_iconbutton.dart';
import 'package:immo_scanner/widgets/app_bar/appbar_image.dart';
import 'package:immo_scanner/widgets/app_bar/appbar_subtitle_2.dart';
import 'package:immo_scanner/widgets/app_bar/custom_app_bar.dart';
import 'package:immo_scanner/widgets/custom_search_view.dart';

// ignore_for_file: must_be_immutable
class HomePage extends StatelessWidget {
  HomeController controller = Get.put(HomeController(HomeModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstant.gray50,
            appBar: CustomAppBar(
                height: getVerticalSize(60),
                title: Padding(
                    padding: getPadding(left: 24),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          AppbarSubtitle2(
                              text: "lbl_location".tr,
                              margin: getMargin(right: 129)),
                          
                          InkWell(
                                    onTap: (){
                                      onTapAddress();
                                    },
                            child: Padding(
                                padding: getPadding(top: 6),
                                child: Row(children: [
                                  AppbarImage(
                                      height: getSize(16),
                                      width: getSize(16),
                                      svgPath: ImageConstant.imgLocation,
                                      margin: getMargin(bottom: 3)),
                                   
                                     Padding(
                                        padding: const EdgeInsets.only(left: 5, bottom: 2),
                                        child:  Obx(() => Text(Get.find<PrefUtils>().address.value, overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtManropeSemiBold14Gray900),
                                      )),
                                   
                                ])),
                          )
                        ])),
                // actions: [
                  // AppbarIconbutton(
                  //     svgPath: ImageConstant.imgOptions,
                  //     margin: getMargin(left: 24, top: 10, right: 10)),
                  // AppbarIconbutton(
                  //     svgPath: ImageConstant.imgNotification,
                  //     margin: getMargin(left: 12, top: 10, right: 34),
                  //     onTap: onTapNotification)
                // ],
                styleType: Style.bgFillGray50),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Padding(
                        padding:
                            getPadding(left: 24, top: 24, right: 24, bottom: 5),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              // CustomSearchView(
                              //     focusNode: FocusNode(),
                              //     controller: controller.group34551Controller,
                              //     hintText: "lbl_search".tr,
                              //     prefix: Container(
                              //         margin: getMargin(
                              //             left: 16,
                              //             top: 16,
                              //             right: 12,
                              //             bottom: 16),
                              //         child: CustomImageView(
                              //             svgPath: ImageConstant.imgSearch)),
                              //     prefixConstraints: BoxConstraints(
                              //         maxHeight: getVerticalSize(56)),
                              //     suffix: Container(
                              //         margin: getMargin(
                              //             left: 30,
                              //             top: 16,
                              //             right: 16,
                              //             bottom: 16),
                              //         child: CustomImageView(
                              //             svgPath: ImageConstant.imgSettings)),
                              //     suffixConstraints: BoxConstraints(
                              //         maxHeight: getVerticalSize(56))),
                              Padding(
                                  padding: getPadding(top: 0),
                                  child: 
                                  Obx(() => ListView.separated(
                                      physics: NeverScrollableScrollPhysics(),
                                      shrinkWrap: true,
                                      separatorBuilder: (context, index) {
                                        return SizedBox(
                                            height: getVerticalSize(24));
                                      },
                                      itemCount: controller.homeModelObj.value
                                          .homeItemList.length,
                                      itemBuilder: (context, index) {
                                        HomeItemModel model = controller
                                            .homeModelObj
                                            .value
                                            .homeItemList[index];
                                        return HomeItemWidget(model,
                                            onTapImgImg: onTapImgImg);
                                      })),
                                      // Custom not working currently
                                      // Obx(() => ListView.builder(
                                      //   shrinkWrap: true,
                                      //   physics: NeverScrollableScrollPhysics(),
                                      //   itemCount:
                                      //       recentlyViewsController.assetList.length,
                                      //   itemBuilder: (context, index) {
                                      //     return getListElement(
                                      //         recentlyViewsController.assetList[index]);
                                      // }))
                                  )
                            ]))))));
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

  onTapImgImg() {
    Get.toNamed(AppRoutes.productDetailsScreen);
  }

  onTapNotification() {
    Get.toNamed(AppRoutes.notificationScreen);
  }

  onTapAddress() {
    Get.toNamed(AppRoutes.editProfileScreen);
  }
}
