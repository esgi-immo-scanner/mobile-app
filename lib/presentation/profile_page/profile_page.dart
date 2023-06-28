import 'dart:developer';

import 'controller/profile_controller.dart';
import 'models/profile_model.dart';
import 'package:flutter/material.dart';
import 'package:immo_scanner/core/app_export.dart';
import 'package:immo_scanner/widgets/app_bar/appbar_subtitle.dart';
import 'package:immo_scanner/widgets/app_bar/custom_app_bar.dart';
import 'package:immo_scanner/widgets/custom_icon_button.dart';

// ignore_for_file: must_be_immutable
class ProfilePage extends StatelessWidget {
  ProfileController controller = Get.put(ProfileController(ProfileModel(address: "".obs, email: "".obs, fullName: "".obs, photoUrl: "".obs).obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray50,
            appBar: CustomAppBar(
                height: getVerticalSize(48),
                leadingWidth: 64,
                // leading: AppbarIconbutton1(
                //     svgPath: ImageConstant.imgArrowleft,
                //     margin: getMargin(left: 24),
                //     onTap: onTapArrowleft15),
                centerTitle: true,
                title: AppbarSubtitle(text: "lbl_profile".tr)),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 24, top: 32, right: 24, bottom: 32),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          height: getSize(70),
                          width: getSize(70),
                          child: Stack(
                              alignment: Alignment.bottomRight,
                              children: [
                                Obx(() => CustomImageView(
                                    imagePath: controller.profileModelObj.value.getPhotoUrl,
                                        // ImageConstant.imgRectangle36170x70,
                                    height: getSize(70),
                                    width: getSize(70),
                                    radius: BorderRadius.circular(
                                        getHorizontalSize(35)),
                                    alignment: Alignment.center,
                                    imageFromNetwork: true)),
                                CustomIconButton(
                                    height: 24,
                                    width: 24,
                                    variant:
                                        IconButtonVariant.OutlineBluegray50_2,
                                    shape: IconButtonShape.RoundedBorder10,
                                    padding: IconButtonPadding.PaddingAll5,
                                    alignment: Alignment.bottomRight,
                                    onTap: () {
                                      onTapBtnEdit();
                                    },
                                    child: CustomImageView(
                                        svgPath: ImageConstant.imgEdit12x12))
                              ])),
                      Padding(
                          padding: getPadding(top: 8),
                          child: Obx(() => Text(controller.profileModelObj.value.getFullName,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtManropeBold18.copyWith(
                                  letterSpacing: getHorizontalSize(0.2))))),
                      Padding(
                          padding: getPadding(top: 4),
                          child:Obx(() => Text(controller.profileModelObj.value.getEmail,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtManropeMedium14Bluegray500))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(top: 31),
                              child: Text("lbl_home_search".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle
                                      .txtManropeExtraBold14Bluegray500
                                      .copyWith(
                                          letterSpacing:
                                              getHorizontalSize(0.2))))),
                      GestureDetector(
                          onTap: () {
                            onTapRowinstagram();
                          },
                          child: Padding(
                              padding: getPadding(top: 15),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CustomIconButton(
                                        height: 40,
                                        width: 40,
                                        variant:
                                            IconButtonVariant.FillBluegray50,
                                        shape: IconButtonShape.RoundedBorder10,
                                        padding: IconButtonPadding.PaddingAll12,
                                        child: CustomImageView(
                                            svgPath:
                                                ImageConstant.imgInstagram)),
                                    Padding(
                                        padding: getPadding(
                                            left: 16, top: 12, bottom: 7),
                                        child: Text("lbl_recommendations".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtManropeSemiBold14Gray900)),
                                    Spacer(),
                                    CustomImageView(
                                        svgPath: ImageConstant
                                            .imgArrowrightBlueGray500,
                                        height: getSize(20),
                                        width: getSize(20),
                                        margin: getMargin(top: 10, bottom: 10))
                                  ]))),
                      GestureDetector(
                          onTap: () {
                            onTapMyfavorites();
                          },
                          child: Padding(
                              padding: getPadding(top: 16),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CustomIconButton(
                                        height: 40,
                                        width: 40,
                                        variant:
                                            IconButtonVariant.FillBluegray50,
                                        shape: IconButtonShape.RoundedBorder10,
                                        padding: IconButtonPadding.PaddingAll12,
                                        child: CustomImageView(
                                            svgPath: ImageConstant
                                                .imgLocation40x40)),
                                    Padding(
                                        padding: getPadding(
                                            left: 16, top: 12, bottom: 7),
                                        child: Text("lbl_my_favorites".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtManropeSemiBold14Gray900)),
                                    Spacer(),
                                    CustomImageView(
                                        svgPath: ImageConstant
                                            .imgArrowrightBlueGray500,
                                        height: getSize(20),
                                        width: getSize(20),
                                        margin: getMargin(top: 10, bottom: 10))
                                  ]))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(top: 32),
                              child: Text("lbl_general".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle
                                      .txtManropeExtraBold14Bluegray500
                                      .copyWith(
                                          letterSpacing:
                                              getHorizontalSize(0.2))))),
                      GestureDetector(
                          onTap: () {
                            onTapSettings();
                          },
                          child: Padding(
                              padding: getPadding(top: 16, bottom: 5),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CustomIconButton(
                                        height: 40,
                                        width: 40,
                                        variant:
                                            IconButtonVariant.FillBluegray50,
                                        shape: IconButtonShape.RoundedBorder10,
                                        padding: IconButtonPadding.PaddingAll12,
                                        child: CustomImageView(
                                            svgPath:
                                                ImageConstant.imgSettings1)),
                                    Padding(
                                        padding: getPadding(
                                            left: 16, top: 12, bottom: 7),
                                        child: Text("lbl_settings".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtManropeSemiBold14Gray900)),
                                    Spacer(),
                                    CustomImageView(
                                        svgPath: ImageConstant
                                            .imgArrowrightBlueGray500,
                                        height: getSize(20),
                                        width: getSize(20),
                                        margin: getMargin(top: 10, bottom: 10))
                                  ]))),
                      GestureDetector(
                        onTap: () {
                          onTapLogout();
                        },
                        child: Padding(
                            padding: getPadding(top: 16),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CustomIconButton(
                                      height: 40,
                                      width: 40,
                                      variant: IconButtonVariant.FillBluegray50,
                                      shape: IconButtonShape.RoundedBorder10,
                                      padding: IconButtonPadding.PaddingAll12,
                                      child: CustomImageView(
                                          svgPath: ImageConstant.imgMenu1)),
                                  Padding(
                                      padding: getPadding(
                                          left: 16, top: 12, bottom: 7),
                                      child: Text("lbl_logout".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtManropeSemiBold14Gray900)),
                                  const Spacer(),
                                  CustomImageView(
                                      svgPath: ImageConstant
                                          .imgArrowrightBlueGray500,
                                      height: getSize(20),
                                      width: getSize(20),
                                      margin: getMargin(top: 10, bottom: 10))
                                ])),
                      )
                    ]))));
  }

  onTapBtnEdit() {
    Get.toNamed(AppRoutes.editProfileScreen);
  }

  onTapRowinstagram() {
    Get.toNamed(AppRoutes.recentlyViewsScreen);
  }

  onTapMyfavorites() {
    Get.toNamed(AppRoutes.myHomePage);
  }

  onTapPasttour() {
    Get.toNamed(AppRoutes.pastToursScreen);
  }

  onTapMylistings() {
    Get.toNamed(AppRoutes.homeListingScreen);
  }

  onTapSettings() {
    Get.toNamed(AppRoutes.settingsScreen);
  }

  Future<void> onTapLogout() async {
    try {
      await controller.callLogout();
      _onOnTapSignInSuccess();
    } on NoInternetException catch (e) {
      Get.rawSnackbar(message: e.toString());
    } catch (e) {
      Get.rawSnackbar(message: "Error while login out");
      log(e.toString());
    }
  }

  _onOnTapSignInSuccess() {
    Get.offAllNamed(AppRoutes.signInScreen);
  }

  onTapArrowleft15() {
    Get.back();
  }
}
