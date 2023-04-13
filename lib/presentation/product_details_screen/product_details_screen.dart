import '../product_details_screen/widgets/listdate_item_widget.dart';
import '../product_details_screen/widgets/listfive_item_widget.dart';
import '../product_details_screen/widgets/listrectangle4224_item_widget.dart';
import '../product_details_screen/widgets/sliderarrowleft_item_widget.dart';
import 'controller/product_details_controller.dart';
import 'models/listdate_item_model.dart';
import 'models/listfive_item_model.dart';
import 'models/listrectangle4224_item_model.dart';
import 'models/sliderarrowleft_item_model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:immo_scanner/core/app_export.dart';
import 'package:immo_scanner/widgets/custom_button.dart';
import 'package:immo_scanner/widgets/custom_icon_button.dart';
import 'package:immo_scanner/widgets/custom_radio_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ProductDetailsScreen extends GetWidget<ProductDetailsController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray50,
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Padding(
                        padding: getPadding(left: 16, top: 33, bottom: 5),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                  height: getSize(343),
                                  width: getSize(343),
                                  child: Stack(
                                      alignment: Alignment.bottomCenter,
                                      children: [
                                        Obx(() => CarouselSlider.builder(
                                            options: CarouselOptions(
                                                height: getSize(343),
                                                initialPage: 0,
                                                autoPlay: true,
                                                viewportFraction: 1.0,
                                                enableInfiniteScroll: false,
                                                scrollDirection:
                                                    Axis.horizontal,
                                                onPageChanged: (index, reason) {
                                                  controller.silderIndex.value =
                                                      index;
                                                }),
                                            itemCount: controller
                                                .productDetailsModelObj
                                                .value
                                                .sliderarrowleftItemList
                                                .length,
                                            itemBuilder:
                                                (context, index, realIndex) {
                                              SliderarrowleftItemModel model =
                                                  controller
                                                          .productDetailsModelObj
                                                          .value
                                                          .sliderarrowleftItemList[
                                                      index];
                                              return SliderarrowleftItemWidget(
                                                  model);
                                            })),
                                        Align(
                                            alignment: Alignment.bottomCenter,
                                            child: Obx(() => Container(
                                                height: getVerticalSize(3),
                                                margin: getMargin(bottom: 16),
                                                child: AnimatedSmoothIndicator(
                                                    activeIndex: controller
                                                        .silderIndex.value,
                                                    count: controller
                                                        .productDetailsModelObj
                                                        .value
                                                        .sliderarrowleftItemList
                                                        .length,
                                                    axisDirection:
                                                        Axis.horizontal,
                                                    effect: ScrollingDotsEffect(
                                                        spacing: 4,
                                                        activeDotColor:
                                                            ColorConstant
                                                                .blue500,
                                                        dotColor: ColorConstant
                                                            .gray30099,
                                                        dotHeight:
                                                            getVerticalSize(3),
                                                        dotWidth: getHorizontalSize(
                                                            16))))))
                                      ])),
                              Padding(
                                  padding: getPadding(left: 8, top: 34),
                                  child: Text("lbl_description".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtManropeBold18.copyWith(
                                          letterSpacing:
                                              getHorizontalSize(0.2)))),
                              Padding(
                                  padding:
                                      getPadding(left: 8, top: 13, right: 39),
                                  child: Row(children: [
                                    CustomIconButton(
                                        height: 34,
                                        width: 34,
                                        variant: IconButtonVariant.FillBlue500,
                                        shape: IconButtonShape.RoundedBorder5,
                                        child: CustomImageView(
                                            svgPath:
                                                ImageConstant.imgIcon20x20)),
                                    Padding(
                                        padding: getPadding(left: 2),
                                        child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text("lbl_bathroom2".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle.txtManrope10
                                                      .copyWith(
                                                          letterSpacing:
                                                              getHorizontalSize(
                                                                  0.4))),
                                              Align(
                                                  alignment: Alignment.center,
                                                  child: Padding(
                                                      padding:
                                                          getPadding(top: 1),
                                                      child: Text(
                                                          "lbl_2_rooms".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtManropeBold12
                                                              .copyWith(
                                                                  letterSpacing:
                                                                      getHorizontalSize(
                                                                          0.4)))))
                                            ])),
                                    CustomIconButton(
                                        height: 34,
                                        width: 34,
                                        margin: getMargin(left: 5),
                                        variant: IconButtonVariant.FillBlue500,
                                        shape: IconButtonShape.RoundedBorder5,
                                        child: CustomImageView(
                                            svgPath:
                                                ImageConstant.imgLock20x20)),
                                    Padding(
                                        padding: getPadding(left: 1),
                                        child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text("lbl_bedroom2".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle.txtManrope10
                                                      .copyWith(
                                                          letterSpacing:
                                                              getHorizontalSize(
                                                                  0.4))),
                                              Padding(
                                                  padding: getPadding(top: 1),
                                                  child: Text("lbl_3_rooms".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtManropeBold12
                                                          .copyWith(
                                                              letterSpacing:
                                                                  getHorizontalSize(
                                                                      0.4))))
                                            ])),
                                    CustomIconButton(
                                        height: 34,
                                        width: 34,
                                        margin: getMargin(left: 5),
                                        variant: IconButtonVariant.FillBlue500,
                                        shape: IconButtonShape.RoundedBorder5,
                                        child: CustomImageView(
                                            svgPath:
                                                ImageConstant.imgOffer20x20)),
                                    Padding(
                                        padding: getPadding(left: 8, top: 2),
                                        child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text("lbl_square".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle.txtManrope10
                                                      .copyWith(
                                                          letterSpacing:
                                                              getHorizontalSize(
                                                                  0.4))),
                                              Padding(
                                                  padding: getPadding(top: 1),
                                                  child: Text("lbl_1_880_ft".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtManropeBold12
                                                          .copyWith(
                                                              letterSpacing:
                                                                  getHorizontalSize(
                                                                      0.4))))
                                            ]))
                                  ])),
                              Padding(
                                  padding: getPadding(left: 8, top: 31),
                                  child: Text("lbl_about".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtManropeBold18.copyWith(
                                          letterSpacing:
                                              getHorizontalSize(0.2)))),
                              Container(
                                  width: getHorizontalSize(327),
                                  margin:
                                      getMargin(left: 8, top: 13, right: 39),
                                  child: Text("msg_casablanca_ground2".tr,
                                      maxLines: null,
                                      textAlign: TextAlign.left,
                                      style:
                                          AppStyle.txtManropeRegular14Gray900)),
                              Padding(
                                  padding: getPadding(left: 8, top: 13),
                                  child: Row(children: [
                                    Text("lbl_see_more".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtManropeBold14Blue500
                                            .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(0.2))),
                                    CustomImageView(
                                        svgPath:
                                            ImageConstant.imgArrowright16x16,
                                        height: getSize(16),
                                        width: getSize(16),
                                        margin: getMargin(
                                            left: 8, top: 1, bottom: 2))
                                  ])),
                              Padding(
                                  padding: getPadding(left: 8, top: 34),
                                  child: Text("lbl_gallery".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtManropeBold18.copyWith(
                                          letterSpacing:
                                              getHorizontalSize(0.2)))),
                              Padding(
                                  padding:
                                      getPadding(left: 8, top: 13, right: 39),
                                  child: Row(children: [
                                    CustomImageView(
                                        imagePath: ImageConstant.img1,
                                        height: getVerticalSize(130),
                                        width: getHorizontalSize(100)),
                                    Container(
                                        height: getVerticalSize(130),
                                        width: getHorizontalSize(99),
                                        margin: getMargin(left: 14),
                                        child: Stack(
                                            alignment: Alignment.topLeft,
                                            children: [
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgImg130x991,
                                                  height: getVerticalSize(130),
                                                  width: getHorizontalSize(99),
                                                  radius: BorderRadius.circular(
                                                      getHorizontalSize(5)),
                                                  alignment: Alignment.center),
                                              CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgVuesaxboldvideocircle,
                                                  height: getSize(24),
                                                  width: getSize(24),
                                                  alignment: Alignment.topLeft,
                                                  margin: getMargin(
                                                      left: 36, top: 51))
                                            ])),
                                    Container(
                                        height: getVerticalSize(130),
                                        width: getHorizontalSize(100),
                                        margin: getMargin(left: 14),
                                        child: Stack(
                                            alignment: Alignment.center,
                                            children: [
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgBg130x100,
                                                  height: getVerticalSize(130),
                                                  width: getHorizontalSize(100),
                                                  radius: BorderRadius.circular(
                                                      getHorizontalSize(5)),
                                                  alignment: Alignment.center),
                                              Align(
                                                  alignment: Alignment.center,
                                                  child: Text("lbl_123".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtManropeExtraBold18Gray300
                                                          .copyWith(
                                                              letterSpacing:
                                                                  getHorizontalSize(
                                                                      0.2))))
                                            ]))
                                  ])),
                              Padding(
                                  padding: getPadding(left: 8, top: 32),
                                  child: Text("lbl_location".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtManropeBold18.copyWith(
                                          letterSpacing:
                                              getHorizontalSize(0.2)))),
                              Container(
                                  height: getVerticalSize(152),
                                  width: getHorizontalSize(327),
                                  margin: getMargin(left: 8, top: 15),
                                  child: Stack(
                                      alignment: Alignment.topLeft,
                                      children: [
                                        CustomImageView(
                                            imagePath: ImageConstant
                                                .imgMapsiclemap152x3271,
                                            height: getVerticalSize(152),
                                            width: getHorizontalSize(327),
                                            radius: BorderRadius.circular(
                                                getHorizontalSize(16)),
                                            alignment: Alignment.center),
                                        CustomImageView(
                                            svgPath: ImageConstant.imgEye80x80,
                                            height: getSize(80),
                                            width: getSize(80),
                                            alignment: Alignment.topLeft,
                                            margin:
                                                getMargin(left: 93, top: 31))
                                      ])),
                              Container(
                                  margin:
                                      getMargin(left: 8, top: 32, right: 39),
                                  padding: getPadding(all: 24),
                                  decoration: AppDecoration.outlineGray3002
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder10),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                            padding: getPadding(top: 3),
                                            child: Text(
                                                "msg_contact_to_buye".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle.txtManropeBold16
                                                    .copyWith(
                                                        letterSpacing:
                                                            getHorizontalSize(
                                                                0.2)))),
                                        Padding(
                                            padding:
                                                getPadding(top: 22, right: 36),
                                            child: Row(children: [
                                              CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgBg48x48,
                                                  height: getSize(48),
                                                  width: getSize(48),
                                                  margin: getMargin(bottom: 1)),
                                              Expanded(
                                                  child: Padding(
                                                      padding: getPadding(
                                                          left: 16, top: 1),
                                                      child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                                "msg_leslie_alexande"
                                                                    .tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtManropeBold16
                                                                    .copyWith(
                                                                        letterSpacing:
                                                                            getHorizontalSize(0.2))),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top: 6),
                                                                child: Text(
                                                                    "msg_rich_capital_pr"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtManropeMedium14Bluegray500))
                                                          ])))
                                            ])),
                                        CustomButton(
                                            height: getVerticalSize(45),
                                            text: "lbl_ask_a_question".tr,
                                            margin: getMargin(top: 12),
                                            variant:
                                                ButtonVariant.FillBluegray50,
                                            shape: ButtonShape.RoundedBorder5,
                                            padding: ButtonPadding.PaddingT10,
                                            fontStyle: ButtonFontStyle
                                                .ManropeSemiBold14Bluegray500_1,
                                            prefixWidget: Container(
                                                margin: getMargin(right: 10),
                                                child: CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgQuestion)))
                                      ])),
                              Padding(
                                  padding:
                                      getPadding(left: 8, top: 34, right: 39),
                                  child: Row(children: [
                                    Text("lbl_key_details".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtManropeBold18
                                            .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(0.2))),
                                    Padding(
                                        padding: getPadding(
                                            left: 30, top: 2, bottom: 2),
                                        child: Text("msg_update_07_07_2".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtManropeRegular14Gray9001))
                                  ])),
                              Padding(
                                  padding: getPadding(left: 8, top: 21),
                                  child: Text("lbl_price_insights".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtManropeBold16.copyWith(
                                          letterSpacing:
                                              getHorizontalSize(0.2)))),
                              Padding(
                                  padding:
                                      getPadding(left: 8, top: 11, right: 39),
                                  child: Row(children: [
                                    Text("lbl_list_price".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtManropeRegular14Gray9001),
                                    Padding(
                                        padding: getPadding(left: 200),
                                        child: Text("lbl_3_000".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtManropeSemiBold14Gray900))
                                  ])),
                              Padding(
                                  padding:
                                      getPadding(left: 8, top: 12, right: 39),
                                  child: Row(children: [
                                    Padding(
                                        padding: getPadding(top: 1),
                                        child: Text("msg_est_mo_paymen".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtManropeRegular14Gray9001)),
                                    Padding(
                                        padding:
                                            getPadding(left: 150, bottom: 1),
                                        child: Text("lbl_15_0002".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtManropeSemiBold14Gray900))
                                  ])),
                              Padding(
                                  padding:
                                      getPadding(left: 8, top: 11, right: 39),
                                  child: Row(children: [
                                    Text("lbl_relax_estimate".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtManropeRegular14Gray9001),
                                    Padding(
                                        padding: getPadding(left: 160),
                                        child: Text("lbl_3_000".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtManropeSemiBold14Gray900))
                                  ])),
                              Padding(
                                  padding:
                                      getPadding(left: 8, top: 13, right: 39),
                                  child: Row(children: [
                                    Padding(
                                        padding: getPadding(top: 1),
                                        child: Text("lbl_price_sq_ft".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtManropeRegular14Gray9001)),
                                    Padding(
                                        padding:
                                            getPadding(left: 220, bottom: 1),
                                        child: Text("lbl2".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtManropeSemiBold14Gray900))
                                  ])),
                              Padding(
                                  padding: getPadding(left: 8, top: 19),
                                  child: Text("lbl_home_facts2".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtManropeBold16.copyWith(
                                          letterSpacing:
                                              getHorizontalSize(0.2)))),
                              Padding(
                                  padding:
                                      getPadding(left: 8, top: 13, right: 39),
                                  child: Row(children: [
                                    Padding(
                                        padding: getPadding(bottom: 1),
                                        child: Text("lbl_on_market".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtManropeRegular14Gray9001)),
                                    Padding(
                                        padding: getPadding(left: 180, top: 1),
                                        child: Text("lbl_30_days".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtManropeSemiBold14Gray900))
                                  ])),
                              Padding(
                                  padding:
                                      getPadding(left: 8, top: 11, right: 39),
                                  child: Row(children: [
                                    Padding(
                                        padding: getPadding(top: 1),
                                        child: Text("lbl_community".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtManropeRegular14Gray9001)),
                                    Padding(
                                        padding:
                                            getPadding(left: 140, bottom: 1),
                                        child: Text("lbl_san_francisco".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtManropeSemiBold14Gray900))
                                  ])),
                              Padding(
                                  padding:
                                      getPadding(left: 8, top: 11, right: 39),
                                  child: Row(children: [
                                    Padding(
                                        padding: getPadding(top: 1),
                                        child: Text("lbl_country".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtManropeRegular14Gray9001)),
                                    Padding(
                                        padding:
                                            getPadding(left: 160, bottom: 1),
                                        child: Text("lbl_san_francisco".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtManropeSemiBold14Gray900))
                                  ])),
                              Padding(
                                  padding:
                                      getPadding(left: 8, top: 11, right: 39),
                                  child: Row(children: [
                                    Text("lbl_mls".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtManropeRegular14Gray9001),
                                    Padding(
                                        padding: getPadding(left: 180),
                                        child: Text("lbl_42212314554".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtManropeSemiBold14Gray900))
                                  ])),
                              Padding(
                                  padding:
                                      getPadding(left: 8, top: 12, right: 39),
                                  child: Row(children: [
                                    Text("lbl_built".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtManropeRegular14Gray9001),
                                    Padding(
                                        padding: getPadding(left: 240),
                                        child: Text("lbl_1992".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtManropeSemiBold14Gray900))
                                  ])),
                              Padding(
                                  padding:
                                      getPadding(left: 8, top: 13, right: 39),
                                  child: Row(children: [
                                    Padding(
                                        padding: getPadding(bottom: 1),
                                        child: Text("lbl_lot_size".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtManropeRegular14Gray9001)),
                                    Padding(
                                        padding: getPadding(left: 142, top: 1),
                                        child: Text("msg_3_400_square_fe".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtManropeSemiBold14Gray900))
                                  ])),
                              Padding(
                                  padding: getPadding(left: 8, top: 15),
                                  child: Row(children: [
                                    Text("lbl_see_more".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtManropeBold14Blue500
                                            .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(0.2))),
                                    CustomImageView(
                                        svgPath:
                                            ImageConstant.imgArrowright16x16,
                                        height: getSize(16),
                                        width: getSize(16),
                                        margin: getMargin(
                                            left: 8, top: 1, bottom: 2))
                                  ])),
                              Padding(
                                  padding: getPadding(top: 24),
                                  child: Divider(
                                      height: getVerticalSize(1),
                                      thickness: getVerticalSize(1),
                                      color: ColorConstant.gray300,
                                      indent: getHorizontalSize(8),
                                      endIndent: getHorizontalSize(39))),
                              Padding(
                                  padding: getPadding(left: 8, top: 25),
                                  child: Text("msg_popular_ameniti".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtManropeBold18.copyWith(
                                          letterSpacing:
                                              getHorizontalSize(0.2)))),
                              SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  padding: getPadding(left: 11, top: 21),
                                  child: IntrinsicWidth(
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                        Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgIconGray900,
                                                  height: getSize(24),
                                                  width: getSize(24)),
                                              Padding(
                                                  padding: getPadding(top: 10),
                                                  child: Text("lbl_sunning".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtManropeSemiBold12
                                                          .copyWith(
                                                              letterSpacing:
                                                                  getHorizontalSize(
                                                                      0.4))))
                                            ]),
                                        Padding(
                                            padding:
                                                getPadding(left: 22, bottom: 1),
                                            child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgSignal,
                                                      height: getSize(24),
                                                      width: getSize(24)),
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 9),
                                                      child: Text(
                                                          "lbl_free_wifi2".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtManropeSemiBold12
                                                              .copyWith(
                                                                  letterSpacing:
                                                                      getHorizontalSize(
                                                                          0.4))))
                                                ])),
                                        Padding(
                                            padding:
                                                getPadding(left: 18, bottom: 1),
                                            child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgAlarm,
                                                      height: getSize(24),
                                                      width: getSize(24)),
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 9),
                                                      child: Text(
                                                          "lbl_restaurant".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtManropeSemiBold12
                                                              .copyWith(
                                                                  letterSpacing:
                                                                      getHorizontalSize(
                                                                          0.4))))
                                                ])),
                                        Padding(
                                            padding:
                                                getPadding(left: 33, bottom: 1),
                                            child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgIcon24x24,
                                                      height: getSize(24),
                                                      width: getSize(24)),
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 9),
                                                      child: Text("lbl_bar".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtManropeSemiBold12
                                                              .copyWith(
                                                                  letterSpacing:
                                                                      getHorizontalSize(
                                                                          0.4))))
                                                ])),
                                        Padding(
                                            padding:
                                                getPadding(left: 36, bottom: 1),
                                            child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgClock1,
                                                      height: getSize(24),
                                                      width: getSize(24)),
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 9),
                                                      child: Text(
                                                          "lbl_business".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: AppStyle
                                                              .txtManropeSemiBold12
                                                              .copyWith(
                                                                  letterSpacing:
                                                                      getHorizontalSize(
                                                                          0.4))))
                                                ]))
                                      ]))),
                              Padding(
                                  padding: getPadding(left: 8, top: 15),
                                  child: Row(children: [
                                    Text("lbl_all_amenities".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtManropeBold14Blue500
                                            .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(0.2))),
                                    CustomImageView(
                                        svgPath:
                                            ImageConstant.imgArrowright16x16,
                                        height: getSize(16),
                                        width: getSize(16),
                                        margin: getMargin(
                                            left: 14, top: 1, bottom: 2))
                                  ])),
                              Padding(
                                  padding: getPadding(top: 24),
                                  child: Divider(
                                      height: getVerticalSize(1),
                                      thickness: getVerticalSize(1),
                                      color: ColorConstant.gray300,
                                      indent: getHorizontalSize(8),
                                      endIndent: getHorizontalSize(39))),
                              Padding(
                                  padding:
                                      getPadding(left: 8, top: 23, right: 39),
                                  child: Row(children: [
                                    Text("lbl_reviews".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtManropeBold18
                                            .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(0.2))),
                                    Padding(
                                        padding: getPadding(
                                            left: 140, top: 4, bottom: 3),
                                        child: Text("msg_view_all_review".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtManropeBold12Blue500
                                                .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                            0.4))))
                                  ])),
                              Padding(
                                  padding: getPadding(left: 8, top: 14),
                                  child: Row(children: [
                                    Text("lbl_4_9".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtManropeBold32
                                            .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(0.2))),
                                    CustomImageView(
                                        svgPath: ImageConstant.imgTicket,
                                        height: getVerticalSize(15),
                                        width: getHorizontalSize(96),
                                        margin: getMargin(
                                            left: 12, top: 13, bottom: 14)),
                                    Padding(
                                        padding: getPadding(
                                            left: 14, top: 15, bottom: 11),
                                        child: Text("lbl_100_ratings".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtManropeMedium12Gray900
                                                .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                            0.4))))
                                  ])),
                              Padding(
                                  padding:
                                      getPadding(left: 8, top: 6, right: 39),
                                  child: Obx(() => ListView.separated(
                                      physics: NeverScrollableScrollPhysics(),
                                      shrinkWrap: true,
                                      separatorBuilder: (context, index) {
                                        return SizedBox(
                                            height: getVerticalSize(3));
                                      },
                                      itemCount: controller
                                          .productDetailsModelObj
                                          .value
                                          .listfiveItemList
                                          .length,
                                      itemBuilder: (context, index) {
                                        ListfiveItemModel model = controller
                                            .productDetailsModelObj
                                            .value
                                            .listfiveItemList[index];
                                        return ListfiveItemWidget(model);
                                      }))),
                              Padding(
                                  padding: getPadding(top: 24),
                                  child: Divider(
                                      height: getVerticalSize(1),
                                      thickness: getVerticalSize(1),
                                      color: ColorConstant.gray300,
                                      indent: getHorizontalSize(8),
                                      endIndent: getHorizontalSize(39))),
                              Padding(
                                  padding: getPadding(left: 8, top: 25),
                                  child: Text("msg_sale_tax_hist".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtManropeBold18.copyWith(
                                          letterSpacing:
                                              getHorizontalSize(0.2)))),
                              Container(
                                  margin:
                                      getMargin(left: 8, top: 17, right: 39),
                                  padding: getPadding(all: 4),
                                  decoration: AppDecoration.fillBluegray50
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder10),
                                  child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        CustomButton(
                                            height: getVerticalSize(40),
                                            width: getHorizontalSize(150),
                                            text: "lbl_sale_history".tr,
                                            variant: ButtonVariant
                                                .OutlineBluegray40014,
                                            shape: ButtonShape.RoundedBorder5,
                                            padding: ButtonPadding.PaddingAll12,
                                            fontStyle: ButtonFontStyle
                                                .ManropeBold14Gray900_1),
                                        Padding(
                                            padding: getPadding(
                                                left: 40,
                                                top: 11,
                                                right: 40,
                                                bottom: 8),
                                            child: Text("lbl_tax_history".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtManropeSemiBold14))
                                      ])),
                              Padding(
                                  padding: getPadding(left: 8, top: 18),
                                  child: CustomRadioButton(
                                      text: "msg_notify_me_when".tr,
                                      value: "msg_notify_me_when".tr,
                                      groupValue: controller.radioGroup.value,
                                      margin: getMargin(left: 8, top: 18),
                                      fontStyle:
                                          RadioFontStyle.ManropeMedium14Gray900,
                                      onChange: (value) {
                                        controller.radioGroup.value = value;
                                      })),
                              Padding(
                                  padding:
                                      getPadding(left: 8, top: 15, right: 39),
                                  child: Obx(() => ListView.separated(
                                      physics: NeverScrollableScrollPhysics(),
                                      shrinkWrap: true,
                                      separatorBuilder: (context, index) {
                                        return Padding(
                                            padding: getPadding(
                                                top: 16.5, bottom: 16.5),
                                            child: SizedBox(
                                                width: getHorizontalSize(327),
                                                child: Divider(
                                                    height: getVerticalSize(1),
                                                    thickness:
                                                        getVerticalSize(1),
                                                    color: ColorConstant
                                                        .gray300)));
                                      },
                                      itemCount: controller
                                          .productDetailsModelObj
                                          .value
                                          .listdateItemList
                                          .length,
                                      itemBuilder: (context, index) {
                                        ListdateItemModel model = controller
                                            .productDetailsModelObj
                                            .value
                                            .listdateItemList[index];
                                        return ListdateItemWidget(model);
                                      }))),
                              Padding(
                                  padding: getPadding(top: 16),
                                  child: Divider(
                                      height: getVerticalSize(1),
                                      thickness: getVerticalSize(1),
                                      color: ColorConstant.gray300,
                                      indent: getHorizontalSize(8),
                                      endIndent: getHorizontalSize(39))),
                              Padding(
                                  padding: getPadding(left: 8, top: 23),
                                  child: Text("lbl_school".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtManropeBold18.copyWith(
                                          letterSpacing:
                                              getHorizontalSize(0.2)))),
                              Padding(
                                  padding: getPadding(left: 8, top: 12),
                                  child: RichText(
                                      text: TextSpan(children: [
                                        TextSpan(
                                            text: "msg_this_home_is_wi2".tr,
                                            style: TextStyle(
                                                color:
                                                    ColorConstant.blueGray500,
                                                fontSize: getFontSize(14),
                                                fontFamily: 'Manrope',
                                                fontWeight: FontWeight.w400)),
                                        TextSpan(
                                            text: "msg_seattle_publics".tr,
                                            style: TextStyle(
                                                color: ColorConstant.blue500,
                                                fontSize: getFontSize(14),
                                                fontFamily: 'Manrope',
                                                fontWeight: FontWeight.w600))
                                      ]),
                                      textAlign: TextAlign.left)),
                              Container(
                                  width: getHorizontalSize(300),
                                  margin: getMargin(left: 8, top: 9, right: 65),
                                  child: Text("msg_seattle_s_enrol".tr,
                                      maxLines: null,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtManropeRegular14Bluegray500)),
                              Padding(
                                  padding:
                                      getPadding(left: 8, top: 21, right: 39),
                                  child: Obx(() => ListView.separated(
                                      physics: NeverScrollableScrollPhysics(),
                                      shrinkWrap: true,
                                      separatorBuilder: (context, index) {
                                        return SizedBox(
                                            height: getVerticalSize(12));
                                      },
                                      itemCount: controller
                                          .productDetailsModelObj
                                          .value
                                          .listrectangle4224ItemList
                                          .length,
                                      itemBuilder: (context, index) {
                                        Listrectangle4224ItemModel model =
                                            controller
                                                    .productDetailsModelObj
                                                    .value
                                                    .listrectangle4224ItemList[
                                                index];
                                        return Listrectangle4224ItemWidget(
                                            model);
                                      }))),
                              Padding(
                                  padding: getPadding(left: 8, top: 16),
                                  child: Row(children: [
                                    Text("lbl_show_4_more".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtManropeBold14Blue500
                                            .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(0.2))),
                                    CustomImageView(
                                        svgPath:
                                            ImageConstant.imgArrowright16x16,
                                        height: getSize(16),
                                        width: getSize(16),
                                        margin: getMargin(
                                            left: 8, top: 1, bottom: 2))
                                  ])),
                              Padding(
                                  padding: getPadding(top: 16),
                                  child: Divider(
                                      height: getVerticalSize(1),
                                      thickness: getVerticalSize(1),
                                      color: ColorConstant.gray300,
                                      indent: getHorizontalSize(8),
                                      endIndent: getHorizontalSize(39))),
                              Padding(
                                  padding: getPadding(left: 8, top: 23),
                                  child: Text("lbl_climate_risk".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtManropeBold18.copyWith(
                                          letterSpacing:
                                              getHorizontalSize(0.2)))),
                              Padding(
                                  padding: getPadding(left: 8, top: 16),
                                  child: Text("msg_about_climate_r".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtManropeSemiBold14Gray900)),
                              Container(
                                  width: getHorizontalSize(300),
                                  margin: getMargin(left: 8, top: 9, right: 65),
                                  child: Text("msg_most_home_have_some".tr,
                                      maxLines: null,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtManropeRegular14Bluegray500)),
                              Padding(
                                  padding: getPadding(left: 8, top: 14),
                                  child: Text("lbl_flood_risk".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtManropeSemiBold14Gray900)),
                              Padding(
                                  padding: getPadding(left: 8, top: 10),
                                  child: RichText(
                                      text: TextSpan(children: [
                                        TextSpan(
                                            text: "lbl_provided_by".tr,
                                            style: TextStyle(
                                                color:
                                                    ColorConstant.blueGray500,
                                                fontSize: getFontSize(14),
                                                fontFamily: 'Manrope',
                                                fontWeight: FontWeight.w400)),
                                        TextSpan(
                                            text: "msg_first_street_fo".tr,
                                            style: TextStyle(
                                                color: ColorConstant.blue500,
                                                fontSize: getFontSize(14),
                                                fontFamily: 'Manrope',
                                                fontWeight: FontWeight.w600))
                                      ]),
                                      textAlign: TextAlign.left)),
                              Container(
                                  margin:
                                      getMargin(left: 8, top: 14, right: 39),
                                  padding: getPadding(
                                      left: 12, top: 13, right: 12, bottom: 13),
                                  decoration: AppDecoration.outlineGray3002
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder10),
                                  child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        CustomImageView(
                                            svgPath: ImageConstant.imgHome4,
                                            height: getSize(24),
                                            width: getSize(24),
                                            margin:
                                                getMargin(top: 15, bottom: 19)),
                                        Expanded(
                                            child: Padding(
                                                padding: getPadding(left: 16),
                                                child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Text(
                                                          "lbl_flood_factor".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtManropeBold12
                                                              .copyWith(
                                                                  letterSpacing:
                                                                      getHorizontalSize(
                                                                          0.4))),
                                                      Container(
                                                          width:
                                                              getHorizontalSize(
                                                                  204),
                                                          margin:
                                                              getMargin(top: 5),
                                                          child: RichText(
                                                              text: TextSpan(
                                                                  children: [
                                                                    TextSpan(
                                                                        text: "lbl_minimal"
                                                                            .tr,
                                                                        style: TextStyle(
                                                                            color: ColorConstant
                                                                                .gray900,
                                                                            fontSize: getFontSize(
                                                                                12),
                                                                            fontFamily:
                                                                                'Manrope',
                                                                            fontWeight:
                                                                                FontWeight.w600,
                                                                            letterSpacing: getHorizontalSize(0.4))),
                                                                    TextSpan(
                                                                        text: "lbl3"
                                                                            .tr,
                                                                        style: TextStyle(
                                                                            color: ColorConstant
                                                                                .gray900,
                                                                            fontSize: getFontSize(
                                                                                12),
                                                                            fontFamily:
                                                                                'Manrope',
                                                                            fontWeight:
                                                                                FontWeight.w400,
                                                                            letterSpacing: getHorizontalSize(0.4))),
                                                                    TextSpan(
                                                                        text: "msg_unlikely_to_flo"
                                                                            .tr,
                                                                        style: TextStyle(
                                                                            color: ColorConstant
                                                                                .blueGray500,
                                                                            fontSize: getFontSize(
                                                                                12),
                                                                            fontFamily:
                                                                                'Manrope',
                                                                            fontWeight:
                                                                                FontWeight.w400,
                                                                            letterSpacing: getHorizontalSize(0.4)))
                                                                  ]),
                                                              textAlign:
                                                                  TextAlign
                                                                      .left))
                                                    ]))),
                                        CustomImageView(
                                            svgPath: ImageConstant
                                                .imgArrowrightBlueGray500,
                                            height: getSize(20),
                                            width: getSize(20),
                                            margin: getMargin(
                                                left: 38, top: 17, bottom: 21))
                                      ])),
                              Padding(
                                  padding: getPadding(left: 8, top: 16),
                                  child: Text("msg_environmental_r".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtManropeSemiBold14Gray900)),
                              Padding(
                                  padding: getPadding(left: 8, top: 10),
                                  child: RichText(
                                      text: TextSpan(children: [
                                        TextSpan(
                                            text: "lbl_provided_by".tr,
                                            style: TextStyle(
                                                color:
                                                    ColorConstant.blueGray500,
                                                fontSize: getFontSize(14),
                                                fontFamily: 'Manrope',
                                                fontWeight: FontWeight.w400)),
                                        TextSpan(
                                            text: "lbl_climatecheck".tr,
                                            style: TextStyle(
                                                color: ColorConstant.blue500,
                                                fontSize: getFontSize(14),
                                                fontFamily: 'Manrope',
                                                fontWeight: FontWeight.w600))
                                      ]),
                                      textAlign: TextAlign.left)),
                              Container(
                                  margin:
                                      getMargin(left: 8, top: 14, right: 39),
                                  padding: getPadding(
                                      left: 12, top: 13, right: 12, bottom: 13),
                                  decoration: AppDecoration.outlineGray3002
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder10),
                                  child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        CustomImageView(
                                            svgPath: ImageConstant.imgClock2,
                                            height: getSize(24),
                                            width: getSize(24),
                                            margin:
                                                getMargin(top: 15, bottom: 19)),
                                        Padding(
                                            padding:
                                                getPadding(left: 16, bottom: 3),
                                            child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                      padding:
                                                          getPadding(left: 5),
                                                      child: Text(
                                                          "lbl_storm_risk".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtManropeBold12
                                                              .copyWith(
                                                                  letterSpacing:
                                                                      getHorizontalSize(
                                                                          0.4)))),
                                                  Container(
                                                      width: getHorizontalSize(
                                                          199),
                                                      margin: getMargin(top: 5),
                                                      child: RichText(
                                                          text: TextSpan(
                                                              children: [
                                                                TextSpan(
                                                                    text:
                                                                        "lbl_very_high"
                                                                            .tr,
                                                                    style: TextStyle(
                                                                        color: ColorConstant
                                                                            .gray900,
                                                                        fontSize:
                                                                            getFontSize(
                                                                                12),
                                                                        fontFamily:
                                                                            'Manrope',
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .w600,
                                                                        letterSpacing:
                                                                            getHorizontalSize(0.4))),
                                                                TextSpan(
                                                                    text: "lbl3"
                                                                        .tr,
                                                                    style: TextStyle(
                                                                        color: ColorConstant
                                                                            .gray900,
                                                                        fontSize:
                                                                            getFontSize(
                                                                                12),
                                                                        fontFamily:
                                                                            'Manrope',
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .w400,
                                                                        letterSpacing:
                                                                            getHorizontalSize(0.4))),
                                                                TextSpan(
                                                                    text:
                                                                        "msg_24_storms_expec"
                                                                            .tr,
                                                                    style: TextStyle(
                                                                        color: ColorConstant
                                                                            .blueGray500,
                                                                        fontSize:
                                                                            getFontSize(
                                                                                12),
                                                                        fontFamily:
                                                                            'Manrope',
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .w400,
                                                                        letterSpacing:
                                                                            getHorizontalSize(0.4)))
                                                              ]),
                                                          textAlign:
                                                              TextAlign.left))
                                                ])),
                                        CustomImageView(
                                            svgPath: ImageConstant
                                                .imgArrowrightBlueGray500,
                                            height: getSize(20),
                                            width: getSize(20),
                                            margin: getMargin(
                                                left: 25, top: 17, bottom: 21))
                                      ])),
                              Container(
                                  margin:
                                      getMargin(left: 8, top: 12, right: 39),
                                  padding: getPadding(
                                      left: 12, top: 14, right: 12, bottom: 14),
                                  decoration: AppDecoration.outlineGray3002
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder10),
                                  child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        CustomImageView(
                                            svgPath:
                                                ImageConstant.imgSignal24x24,
                                            height: getSize(24),
                                            width: getSize(24),
                                            margin:
                                                getMargin(top: 14, bottom: 18)),
                                        Expanded(
                                            child: Padding(
                                                padding: getPadding(
                                                    left: 14, bottom: 1),
                                                child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Text(
                                                          "lbl_drought_risk".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtManropeBold12
                                                              .copyWith(
                                                                  letterSpacing:
                                                                      getHorizontalSize(
                                                                          0.4))),
                                                      Container(
                                                          width:
                                                              getHorizontalSize(
                                                                  217),
                                                          margin: getMargin(
                                                              left: 2, top: 4),
                                                          child: RichText(
                                                              text: TextSpan(
                                                                  children: [
                                                                    TextSpan(
                                                                        text: "lbl_moderate"
                                                                            .tr,
                                                                        style: TextStyle(
                                                                            color: ColorConstant
                                                                                .gray900,
                                                                            fontSize: getFontSize(
                                                                                12),
                                                                            fontFamily:
                                                                                'Manrope',
                                                                            fontWeight:
                                                                                FontWeight.w400,
                                                                            letterSpacing: getHorizontalSize(0.4))),
                                                                    TextSpan(
                                                                        text: "msg_water_stress_ex"
                                                                            .tr,
                                                                        style: TextStyle(
                                                                            color: ColorConstant
                                                                                .blueGray500,
                                                                            fontSize: getFontSize(
                                                                                12),
                                                                            fontFamily:
                                                                                'Manrope',
                                                                            fontWeight:
                                                                                FontWeight.w400,
                                                                            letterSpacing: getHorizontalSize(0.4)))
                                                                  ]),
                                                              textAlign:
                                                                  TextAlign
                                                                      .left))
                                                    ]))),
                                        CustomImageView(
                                            svgPath: ImageConstant
                                                .imgArrowrightBlueGray500,
                                            height: getSize(20),
                                            width: getSize(20),
                                            margin: getMargin(
                                                left: 25, top: 16, bottom: 20))
                                      ])),
                              Container(
                                  margin:
                                      getMargin(left: 8, top: 12, right: 39),
                                  padding: getPadding(
                                      left: 12, top: 13, right: 12, bottom: 13),
                                  decoration: AppDecoration.outlineGray3002
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder10),
                                  child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        CustomImageView(
                                            svgPath:
                                                ImageConstant.imgIconGray900,
                                            height: getSize(24),
                                            width: getSize(24),
                                            margin:
                                                getMargin(top: 15, bottom: 19)),
                                        Expanded(
                                            child: Padding(
                                                padding: getPadding(
                                                    left: 16, bottom: 3),
                                                child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Text("lbl_heat_risk".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtManropeBold12
                                                              .copyWith(
                                                                  letterSpacing:
                                                                      getHorizontalSize(
                                                                          0.4))),
                                                      Container(
                                                          width:
                                                              getHorizontalSize(
                                                                  211),
                                                          margin:
                                                              getMargin(top: 5),
                                                          child: RichText(
                                                              text: TextSpan(
                                                                  children: [
                                                                    TextSpan(
                                                                        text: "lbl_relatively"
                                                                            .tr,
                                                                        style: TextStyle(
                                                                            color: ColorConstant
                                                                                .gray900,
                                                                            fontSize: getFontSize(
                                                                                12),
                                                                            fontFamily:
                                                                                'Manrope',
                                                                            fontWeight:
                                                                                FontWeight.w600,
                                                                            letterSpacing: getHorizontalSize(0.4))),
                                                                    TextSpan(
                                                                        text: "lbl3"
                                                                            .tr,
                                                                        style: TextStyle(
                                                                            color: ColorConstant
                                                                                .gray900,
                                                                            fontSize: getFontSize(
                                                                                12),
                                                                            fontFamily:
                                                                                'Manrope',
                                                                            fontWeight:
                                                                                FontWeight.w400,
                                                                            letterSpacing: getHorizontalSize(0.4))),
                                                                    TextSpan(
                                                                        text: "msg_28_hot_days_exp"
                                                                            .tr,
                                                                        style: TextStyle(
                                                                            color: ColorConstant
                                                                                .blueGray500,
                                                                            fontSize: getFontSize(
                                                                                12),
                                                                            fontFamily:
                                                                                'Manrope',
                                                                            fontWeight:
                                                                                FontWeight.w400,
                                                                            letterSpacing: getHorizontalSize(0.4)))
                                                                  ]),
                                                              textAlign:
                                                                  TextAlign
                                                                      .left))
                                                    ]))),
                                        CustomImageView(
                                            svgPath: ImageConstant
                                                .imgArrowrightBlueGray500,
                                            height: getSize(20),
                                            width: getSize(20),
                                            margin: getMargin(
                                                left: 31, top: 17, bottom: 21))
                                      ])),
                              Container(
                                  margin:
                                      getMargin(left: 8, top: 12, right: 39),
                                  padding: getPadding(
                                      left: 12, top: 13, right: 12, bottom: 13),
                                  decoration: AppDecoration.outlineGray3002
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder10),
                                  child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        CustomImageView(
                                            svgPath: ImageConstant.imgFire,
                                            height: getSize(24),
                                            width: getSize(24),
                                            margin:
                                                getMargin(top: 15, bottom: 19)),
                                        Padding(
                                            padding: getPadding(left: 16),
                                            child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Text("lbl_fire_risk".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtManropeBold12
                                                          .copyWith(
                                                              letterSpacing:
                                                                  getHorizontalSize(
                                                                      0.4))),
                                                  Container(
                                                      width: getHorizontalSize(
                                                          170),
                                                      margin: getMargin(top: 5),
                                                      child: RichText(
                                                          text: TextSpan(
                                                              children: [
                                                                TextSpan(
                                                                    text:
                                                                        "lbl_relatively_low"
                                                                            .tr,
                                                                    style: TextStyle(
                                                                        color: ColorConstant
                                                                            .gray900,
                                                                        fontSize:
                                                                            getFontSize(
                                                                                12),
                                                                        fontFamily:
                                                                            'Manrope',
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .w600,
                                                                        letterSpacing:
                                                                            getHorizontalSize(0.4))),
                                                                TextSpan(
                                                                    text: "lbl3"
                                                                        .tr,
                                                                    style: TextStyle(
                                                                        color: ColorConstant
                                                                            .gray900,
                                                                        fontSize:
                                                                            getFontSize(
                                                                                12),
                                                                        fontFamily:
                                                                            'Manrope',
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .w400,
                                                                        letterSpacing:
                                                                            getHorizontalSize(0.4))),
                                                                TextSpan(
                                                                    text:
                                                                        "msg_2_2_of_land_ex"
                                                                            .tr,
                                                                    style: TextStyle(
                                                                        color: ColorConstant
                                                                            .blueGray500,
                                                                        fontSize:
                                                                            getFontSize(
                                                                                12),
                                                                        fontFamily:
                                                                            'Manrope',
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .w400,
                                                                        letterSpacing:
                                                                            getHorizontalSize(0.4)))
                                                              ]),
                                                          textAlign:
                                                              TextAlign.left))
                                                ])),
                                        CustomImageView(
                                            svgPath: ImageConstant
                                                .imgArrowrightBlueGray500,
                                            height: getVerticalSize(24),
                                            width: getHorizontalSize(20),
                                            margin: getMargin(
                                                left: 40, top: 17, bottom: 21))
                                      ]))
                            ])))),
            bottomNavigationBar: Container(
                padding: getPadding(left: 24, top: 13, right: 24, bottom: 13),
                decoration: AppDecoration.outlineBluegray1000f,
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                          padding: getPadding(top: 2),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                    padding: getPadding(top: 4, bottom: 3),
                                    child: Text("lbl_price2".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtManropeMedium14Gray9001)),
                                Text("lbl_1_940_00".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtManropeExtraBold20Blue500
                                        .copyWith(
                                            letterSpacing:
                                                getHorizontalSize(0.2)))
                              ])),
                      Padding(
                          padding: getPadding(top: 15),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomIconButton(
                                    height: 44,
                                    width: 44,
                                    margin: getMargin(top: 2, bottom: 2),
                                    variant:
                                        IconButtonVariant.OutlineBluegray50_1,
                                    padding: IconButtonPadding.PaddingAll12,
                                    child: CustomImageView(
                                        svgPath: ImageConstant.imgFavorite)),
                                CustomButton(
                                    height: getVerticalSize(48),
                                    text: "lbl_schedule_tour".tr,
                                    shape: ButtonShape.RoundedBorder10,
                                    padding: ButtonPadding.PaddingAll13,
                                    fontStyle: ButtonFontStyle
                                        .ManropeBold16WhiteA700_1)
                              ]))
                    ]))));
  }
}
