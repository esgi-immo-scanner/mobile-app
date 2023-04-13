import 'controller/home_listing_draw_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:immo_scanner/core/app_export.dart';
import 'package:immo_scanner/presentation/home_page/home_page.dart';
import 'package:immo_scanner/presentation/home_search_page/home_search_page.dart';
import 'package:immo_scanner/presentation/my_home_page/my_home_page.dart';
import 'package:immo_scanner/presentation/profile_page/profile_page.dart';
import 'package:immo_scanner/widgets/app_bar/appbar_edittext.dart';
import 'package:immo_scanner/widgets/app_bar/appbar_iconbutton_2.dart';
import 'package:immo_scanner/widgets/app_bar/custom_app_bar.dart';
import 'package:immo_scanner/widgets/custom_bottom_bar.dart';
import 'package:immo_scanner/widgets/custom_button.dart';

class HomeListingDrawScreen extends GetWidget<HomeListingDrawController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Container(
                height: size.height,
                width: double.maxFinite,
                decoration: AppDecoration.fillGray50,
                child: Stack(alignment: Alignment.topCenter, children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgMapsiclemap,
                      height: getVerticalSize(693),
                      width: getHorizontalSize(375),
                      alignment: Alignment.topCenter),
                  Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                          padding: getPadding(left: 16, top: 24, right: 24),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CustomAppBar(
                                    height: getVerticalSize(48),
                                    title: AppbarEdittext(
                                        hintText: "msg_360_stillwater".tr,
                                        controller: controller.searchController,
                                        margin: getMargin(left: 24)),
                                    actions: [
                                      AppbarIconbutton2(
                                          svgPath: ImageConstant.imgMenu,
                                          margin: getMargin(left: 8, right: 24))
                                    ]),
                                Container(
                                    height: getVerticalSize(444),
                                    width: getHorizontalSize(330),
                                    margin: getMargin(top: 30),
                                    child: Stack(
                                        alignment: Alignment.topRight,
                                        children: [
                                          Align(
                                              alignment: Alignment.bottomLeft,
                                              child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    GestureDetector(
                                                        onTap: () {
                                                          onTapSatelite();
                                                        },
                                                        child: Container(
                                                            padding: getPadding(
                                                                all: 8),
                                                            decoration: AppDecoration
                                                                .outlineGray3003
                                                                .copyWith(
                                                                    borderRadius:
                                                                        BorderRadiusStyle
                                                                            .roundedBorder10),
                                                            child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  CustomImageView(
                                                                      svgPath:
                                                                          ImageConstant
                                                                              .imgGlobe,
                                                                      height:
                                                                          getSize(
                                                                              20),
                                                                      width: getSize(
                                                                          20)),
                                                                  Padding(
                                                                      padding: getPadding(
                                                                          top:
                                                                              5),
                                                                      child: Text(
                                                                          "lbl_satelite"
                                                                              .tr,
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style: AppStyle
                                                                              .txtManropeMedium10
                                                                              .copyWith(letterSpacing: getHorizontalSize(0.4))))
                                                                ]))),
                                                    Container(
                                                        margin:
                                                            getMargin(top: 16),
                                                        padding: getPadding(
                                                            left: 15,
                                                            top: 8,
                                                            right: 15,
                                                            bottom: 8),
                                                        decoration: AppDecoration
                                                            .outlineBlue500
                                                            .copyWith(
                                                                borderRadius:
                                                                    BorderRadiusStyle
                                                                        .roundedBorder10),
                                                        child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .min,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            children: [
                                                              CustomImageView(
                                                                  svgPath:
                                                                      ImageConstant
                                                                          .imgCheckmark1,
                                                                  height:
                                                                      getSize(
                                                                          20),
                                                                  width:
                                                                      getSize(
                                                                          20)),
                                                              Padding(
                                                                  padding:
                                                                      getPadding(
                                                                          top:
                                                                              5),
                                                                  child: Text(
                                                                      "lbl_draw"
                                                                          .tr,
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style: AppStyle
                                                                          .txtManropeMedium10Blue500
                                                                          .copyWith(
                                                                              letterSpacing: getHorizontalSize(0.4))))
                                                            ])),
                                                    Container(
                                                        margin:
                                                            getMargin(top: 16),
                                                        padding: getPadding(
                                                            left: 9,
                                                            top: 7,
                                                            right: 9,
                                                            bottom: 7),
                                                        decoration: AppDecoration
                                                            .outlineGray3003
                                                            .copyWith(
                                                                borderRadius:
                                                                    BorderRadiusStyle
                                                                        .roundedBorder10),
                                                        child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .min,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            children: [
                                                              CustomImageView(
                                                                  svgPath:
                                                                      ImageConstant
                                                                          .imgRewind,
                                                                  height:
                                                                      getSize(
                                                                          20),
                                                                  width:
                                                                      getSize(
                                                                          20)),
                                                              Padding(
                                                                  padding:
                                                                      getPadding(
                                                                          top:
                                                                              6),
                                                                  child: Text(
                                                                      "lbl_nearby"
                                                                          .tr,
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style: AppStyle
                                                                          .txtManropeMedium10
                                                                          .copyWith(
                                                                              letterSpacing: getHorizontalSize(0.4))))
                                                            ]))
                                                  ])),
                                          Align(
                                              alignment: Alignment.topRight,
                                              child: Container(
                                                  height: getVerticalSize(300),
                                                  width: getHorizontalSize(277),
                                                  child: Stack(
                                                      alignment:
                                                          Alignment.topLeft,
                                                      children: [
                                                        Align(
                                                            alignment: Alignment
                                                                .centerLeft,
                                                            child: Container(
                                                                margin:
                                                                    getMargin(
                                                                        left:
                                                                            1),
                                                                padding:
                                                                    getPadding(
                                                                        left: 6,
                                                                        top: 14,
                                                                        right:
                                                                            6,
                                                                        bottom:
                                                                            14),
                                                                decoration: BoxDecoration(
                                                                    image: DecorationImage(
                                                                        image: fs.Svg(ImageConstant
                                                                            .imgGroup4348),
                                                                        fit: BoxFit
                                                                            .cover)),
                                                                child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .min,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .end,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      CustomButton(
                                                                          height: getVerticalSize(
                                                                              34),
                                                                          width: getHorizontalSize(
                                                                              82),
                                                                          text: "lbl_142_00"
                                                                              .tr,
                                                                          fontStyle:
                                                                              ButtonFontStyle.ManropeBold12WhiteA700_1),
                                                                      CustomImageView(
                                                                          svgPath: ImageConstant
                                                                              .imgLocation32x32,
                                                                          height: getSize(
                                                                              32),
                                                                          width: getSize(
                                                                              32),
                                                                          margin: getMargin(
                                                                              top: 30,
                                                                              right: 82)),
                                                                      CustomButton(
                                                                          height: getVerticalSize(
                                                                              34),
                                                                          width: getHorizontalSize(
                                                                              83),
                                                                          text: "lbl_100_00"
                                                                              .tr,
                                                                          margin: getMargin(
                                                                              left:
                                                                                  45,
                                                                              top:
                                                                                  133,
                                                                              bottom:
                                                                                  9),
                                                                          variant: ButtonVariant
                                                                              .OutlineGray300_1,
                                                                          alignment:
                                                                              Alignment.centerLeft)
                                                                    ]))),
                                                        CustomButton(
                                                            height:
                                                                getVerticalSize(
                                                                    34),
                                                            width:
                                                                getHorizontalSize(
                                                                    82),
                                                            text:
                                                                "lbl_165_00".tr,
                                                            margin: getMargin(
                                                                top: 37),
                                                            variant: ButtonVariant
                                                                .OutlineGray300_1,
                                                            alignment: Alignment
                                                                .topLeft),
                                                        CustomButton(
                                                            height:
                                                                getVerticalSize(
                                                                    34),
                                                            width:
                                                                getHorizontalSize(
                                                                    80),
                                                            text:
                                                                "lbl_110_00".tr,
                                                            variant: ButtonVariant
                                                                .OutlineGray300_1,
                                                            alignment: Alignment
                                                                .centerRight)
                                                      ])))
                                        ])),
                                Container(
                                    margin: getMargin(left: 8, top: 16),
                                    padding: getPadding(
                                        left: 16,
                                        top: 15,
                                        right: 16,
                                        bottom: 15),
                                    decoration: AppDecoration
                                        .outlineBluegray40014
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder10),
                                    child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgImage83x94,
                                              height: getVerticalSize(83),
                                              width: getHorizontalSize(94),
                                              radius: BorderRadius.circular(
                                                  getHorizontalSize(5))),
                                          Padding(
                                              padding: getPadding(
                                                  left: 8, top: 3, right: 40),
                                              child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                        "msg_primary_apartme"
                                                            .tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtManropeExtraBold16Gray900
                                                            .copyWith(
                                                                letterSpacing:
                                                                    getHorizontalSize(
                                                                        0.2))),
                                                    Padding(
                                                        padding:
                                                            getPadding(top: 7),
                                                        child: Row(children: [
                                                          CustomImageView(
                                                              svgPath:
                                                                  ImageConstant
                                                                      .imgLock,
                                                              height:
                                                                  getSize(16),
                                                              width:
                                                                  getSize(16),
                                                              margin: getMargin(
                                                                  top: 1,
                                                                  bottom: 3)),
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 4),
                                                              child: Text(
                                                                  "lbl_3".tr,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtManropeMedium14Bluegray500)),
                                                          CustomImageView(
                                                              svgPath:
                                                                  ImageConstant
                                                                      .imgPrinter,
                                                              height:
                                                                  getSize(16),
                                                              width:
                                                                  getSize(16),
                                                              margin: getMargin(
                                                                  left: 12,
                                                                  top: 1,
                                                                  bottom: 3)),
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 4),
                                                              child: Text(
                                                                  "lbl_2".tr,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtManropeMedium14Bluegray500)),
                                                          CustomImageView(
                                                              svgPath:
                                                                  ImageConstant
                                                                      .imgOffer,
                                                              height:
                                                                  getSize(16),
                                                              width:
                                                                  getSize(16),
                                                              margin: getMargin(
                                                                  left: 12,
                                                                  top: 1,
                                                                  bottom: 3)),
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 4),
                                                              child: RichText(
                                                                  text: TextSpan(
                                                                      children: [
                                                                        TextSpan(
                                                                            text: "lbl_1_880"
                                                                                .tr,
                                                                            style: TextStyle(
                                                                                color: ColorConstant.blueGray500,
                                                                                fontSize: getFontSize(14),
                                                                                fontFamily: 'Manrope',
                                                                                fontWeight: FontWeight.w500)),
                                                                        TextSpan(
                                                                            text:
                                                                                " ",
                                                                            style: TextStyle(
                                                                                color: ColorConstant.blueGray500,
                                                                                fontSize: getFontSize(14),
                                                                                fontFamily: 'Manrope',
                                                                                fontWeight: FontWeight.w800,
                                                                                letterSpacing: getHorizontalSize(0.2))),
                                                                        TextSpan(
                                                                            text: "lbl_ft"
                                                                                .tr,
                                                                            style: TextStyle(
                                                                                color: ColorConstant.blueGray500,
                                                                                fontSize: getFontSize(10),
                                                                                fontFamily: 'Manrope',
                                                                                fontWeight: FontWeight.w500,
                                                                                letterSpacing: getHorizontalSize(0.4)))
                                                                      ]),
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left))
                                                        ])),
                                                    Padding(
                                                        padding:
                                                            getPadding(top: 7),
                                                        child: RichText(
                                                            text: TextSpan(
                                                                children: [
                                                                  TextSpan(
                                                                      text: "lbl_1_600"
                                                                          .tr,
                                                                      style: TextStyle(
                                                                          color: ColorConstant
                                                                              .blue500,
                                                                          fontSize: getFontSize(
                                                                              16),
                                                                          fontFamily:
                                                                              'Manrope',
                                                                          fontWeight: FontWeight
                                                                              .w800,
                                                                          letterSpacing:
                                                                              getHorizontalSize(0.2))),
                                                                  TextSpan(
                                                                      text: "lbl_month"
                                                                          .tr,
                                                                      style: TextStyle(
                                                                          color: ColorConstant
                                                                              .blueGray500,
                                                                          fontSize: getFontSize(
                                                                              12),
                                                                          fontFamily:
                                                                              'Manrope',
                                                                          fontWeight: FontWeight
                                                                              .w500,
                                                                          letterSpacing:
                                                                              getHorizontalSize(0.4)))
                                                                ]),
                                                            textAlign:
                                                                TextAlign.left))
                                                  ]))
                                        ]))
                              ])))
                ])),
            bottomNavigationBar:
                CustomBottomBar(onChanged: (BottomBarEnum type) {
              Get.toNamed(getCurrentRoute(type), id: 1);
            })));
  }

  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.homePage;
      case BottomBarEnum.Discover:
        return AppRoutes.homeSearchPage;
      case BottomBarEnum.MyFavourites:
        return AppRoutes.myHomePage;
      case BottomBarEnum.Profile:
        return AppRoutes.profilePage;
      default:
        return "/";
    }
  }

  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homePage:
        return HomePage();
      case AppRoutes.messagePage:
        return HomeSearchPage();
      case AppRoutes.myHomePage:
        return MyHomePage();
      case AppRoutes.profilePage:
        return ProfilePage();
      default:
        return DefaultWidget();
    }
  }

  onTapSatelite() {
    Get.toNamed(AppRoutes.homeListingSateliteScreen);
  }
}
