import 'package:asset_manager/api.dart';

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
  // Get arguments given by Get.toNamed last page
  // var arguments = Get.arguments;
  Asset assetDemo = Asset(
    id: "5",
    title: "Studio 1 pièce 30 m²",
    description:
        "Ce studio récemment rénové est idéalement situé à proximité des commerces, offrant ainsi un grand confort de vie. Avec une surface de 30 m², il est parfait pour une personne seule ou un couple à la recherche d'un espace fonctionnel et moderne. L'appartement est lumineux et dispose d'une configuration intelligente pour optimiser chaque mètre carré.",
    area: 30,
    GES: "E",
    DPE: "E",
    price: 100000,
    roomCount: 1,
    pictures:
        "https://github.com/esgi-immo-scanner/mobile_app/blob/main/assets/images/studio_1.jpg?raw=true",
    annonceId: "5",
    city: "Toulouse",
    postalCode: "31000",
    department: "Haute-Garonne",
    ownerName: "Sophie Mercier",
    ownerSiren: "567891234",
    ownerStoreId: "49688",
    phone: "0483927561",
    realEstateType: "Studio",
    region: "Occitanie",
    currency: "EUR",
    categoryName: "Vente",
    details: Details(
        GES: "E",
        classeNergie: "E",
        nombreDeChambres: "1",
        surface: "30",
        honoraires: "4%",
        tageDuBien: "3",
        typeDeBien: "Studio"),
  );

  @override
  Widget build(BuildContext context) {
    // arguments = Get.arguments;
    // print(arguments);
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
                                        // Align(
                                        //   alignment: Alignment.bottomCenter,
                                        //   child: Obx(
                                        //     () => Container(
                                        //       height: getVerticalSize(3),
                                        //       margin: getMargin(bottom: 16),
                                        //       child: AnimatedSmoothIndicator(
                                        //         activeIndex: controller
                                        //             .silderIndex.value,
                                        //         count: controller
                                        //             .productDetailsModelObj
                                        //             .value
                                        //             .sliderarrowleftItemList
                                        //             .length,
                                        //         axisDirection: Axis.horizontal,
                                        //         effect: ScrollingDotsEffect(
                                        //           spacing: 4,
                                        //           activeDotColor:
                                        //               ColorConstant.blue500,
                                        //           dotColor:
                                        //               ColorConstant.gray30099,
                                        //           dotHeight: getVerticalSize(3),
                                        //           dotWidth:
                                        //               getHorizontalSize(16),
                                        //         ),
                                        //       ),
                                        //     ),
                                        //   ),
                                        // )
                                      ])),
                              Padding(
                                  padding: getPadding(left: 8, top: 34),
                                  child: Text("Informations",
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
                                              Text("Chambres",
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
                                                          "  " +
                                                              (assetDemo.details
                                                                      ?.nombreDeChambres ??
                                                                  ""),
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
                                              Text("Salle de bains",
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
                                                  child: Text("  2",
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
                                              Text("Surface",
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
                                                  child: Text(
                                                      (assetDemo.details
                                                                  ?.surface ??
                                                              "") +
                                                          " m²",
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
                                  child: Text("Description",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtManropeBold18.copyWith(
                                          letterSpacing:
                                              getHorizontalSize(0.2)))),
                              Container(
                                  width: getHorizontalSize(327),
                                  margin:
                                      getMargin(left: 8, top: 13, right: 39),
                                  child: Text(assetDemo.description ?? "",
                                      maxLines: null,
                                      textAlign: TextAlign.left,
                                      style:
                                          AppStyle.txtManropeRegular14Gray900)),
                              Padding(
                                  padding: getPadding(left: 8, top: 13),
                                  child: Row(children: [
                                    Text("Voir plus",
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
                              // Gallery start
                              // Padding(
                              //     padding: getPadding(left: 8, top: 34),
                              //     child: Text("lbl_gallery".tr,
                              //         overflow: TextOverflow.ellipsis,
                              //         textAlign: TextAlign.left,
                              //         style: AppStyle.txtManropeBold18.copyWith(
                              //             letterSpacing:
                              //                 getHorizontalSize(0.2)))),
                              // Padding(
                              //     padding:
                              //         getPadding(left: 8, top: 13, right: 39),
                              //     child: Row(children: [
                              //       CustomImageView(
                              //           imagePath: ImageConstant.img1,
                              //           height: getVerticalSize(130),
                              //           width: getHorizontalSize(100)),
                              //       Container(
                              //           height: getVerticalSize(130),
                              //           width: getHorizontalSize(99),
                              //           margin: getMargin(left: 14),
                              //           child: Stack(
                              //               alignment: Alignment.topLeft,
                              //               children: [
                              //                 CustomImageView(
                              //                     imagePath: ImageConstant
                              //                         .imgImg130x991,
                              //                     height: getVerticalSize(130),
                              //                     width: getHorizontalSize(99),
                              //                     radius: BorderRadius.circular(
                              //                         getHorizontalSize(5)),
                              //                     alignment: Alignment.center),
                              //                 CustomImageView(
                              //                     svgPath: ImageConstant
                              //                         .imgVuesaxboldvideocircle,
                              //                     height: getSize(24),
                              //                     width: getSize(24),
                              //                     alignment: Alignment.topLeft,
                              //                     margin: getMargin(
                              //                         left: 36, top: 51))
                              //               ])),
                              //       Container(
                              //           height: getVerticalSize(130),
                              //           width: getHorizontalSize(100),
                              //           margin: getMargin(left: 14),
                              //           child: Stack(
                              //               alignment: Alignment.center,
                              //               children: [
                              //                 CustomImageView(
                              //                     imagePath: ImageConstant
                              //                         .imgBg130x100,
                              //                     height: getVerticalSize(130),
                              //                     width: getHorizontalSize(100),
                              //                     radius: BorderRadius.circular(
                              //                         getHorizontalSize(5)),
                              //                     alignment: Alignment.center),
                              //                 Align(
                              //                     alignment: Alignment.center,
                              //                     child: Text("lbl_123".tr,
                              //                         overflow:
                              //                             TextOverflow.ellipsis,
                              //                         textAlign: TextAlign.left,
                              //                         style: AppStyle
                              //                             .txtManropeExtraBold18Gray300
                              //                             .copyWith(
                              //                                 letterSpacing:
                              //                                     getHorizontalSize(
                              //                                         0.2))))
                              //               ]))
                              //     ])),
                              // Gallery end

                              // Location start
                              Padding(
                                  padding: getPadding(left: 8, top: 32),
                                  child: Text("Localisation",
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
                              // Location end

                              // Contact start
                              // Container(
                              //     margin:
                              //         getMargin(left: 8, top: 32, right: 39),
                              //     padding: getPadding(all: 24),
                              //     decoration: AppDecoration.outlineGray3002
                              //         .copyWith(
                              //             borderRadius: BorderRadiusStyle
                              //                 .roundedBorder10),
                              //     child: Column(
                              //         mainAxisSize: MainAxisSize.min,
                              //         crossAxisAlignment:
                              //             CrossAxisAlignment.start,
                              //         mainAxisAlignment:
                              //             MainAxisAlignment.center,
                              //         children: [
                              //           Padding(
                              //               padding: getPadding(top: 3),
                              //               child: Text(
                              //                   "msg_contact_to_buye".tr,
                              //                   overflow: TextOverflow.ellipsis,
                              //                   textAlign: TextAlign.left,
                              //                   style: AppStyle.txtManropeBold16
                              //                       .copyWith(
                              //                           letterSpacing:
                              //                               getHorizontalSize(
                              //                                   0.2)))),
                              //           Padding(
                              //               padding:
                              //                   getPadding(top: 22, right: 36),
                              //               child: Row(children: [
                              //                 CustomImageView(
                              //                     imagePath:
                              //                         ImageConstant.imgBg48x48,
                              //                     height: getSize(48),
                              //                     width: getSize(48),
                              //                     margin: getMargin(bottom: 1)),
                              //                 Expanded(
                              //                     child: Padding(
                              //                         padding: getPadding(
                              //                             left: 16, top: 1),
                              //                         child: Column(
                              //                             crossAxisAlignment:
                              //                                 CrossAxisAlignment
                              //                                     .start,
                              //                             mainAxisAlignment:
                              //                                 MainAxisAlignment
                              //                                     .start,
                              //                             children: [
                              //                               Text(
                              //                                   "msg_leslie_alexande"
                              //                                       .tr,
                              //                                   overflow:
                              //                                       TextOverflow
                              //                                           .ellipsis,
                              //                                   textAlign:
                              //                                       TextAlign
                              //                                           .left,
                              //                                   style: AppStyle
                              //                                       .txtManropeBold16
                              //                                       .copyWith(
                              //                                           letterSpacing:
                              //                                               getHorizontalSize(0.2))),
                              //                               Padding(
                              //                                   padding:
                              //                                       getPadding(
                              //                                           top: 6),
                              //                                   child: Text(
                              //                                       "msg_rich_capital_pr"
                              //                                           .tr,
                              //                                       overflow:
                              //                                           TextOverflow
                              //                                               .ellipsis,
                              //                                       textAlign:
                              //                                           TextAlign
                              //                                               .left,
                              //                                       style: AppStyle
                              //                                           .txtManropeMedium14Bluegray500))
                              //                             ])))
                              //               ])),
                              //           CustomButton(
                              //               height: getVerticalSize(45),
                              //               text: "lbl_ask_a_question".tr,
                              //               margin: getMargin(top: 12),
                              //               variant:
                              //                   ButtonVariant.FillBluegray50,
                              //               shape: ButtonShape.RoundedBorder5,
                              //               padding: ButtonPadding.PaddingT10,
                              //               fontStyle: ButtonFontStyle
                              //                   .ManropeSemiBold14Bluegray500_1,
                              //               prefixWidget: Container(
                              //                   margin: getMargin(right: 10),
                              //                   child: CustomImageView(
                              //                       svgPath: ImageConstant
                              //                           .imgQuestion)))
                              //         ])),
                              // Contact end

                              // Key details start
                              // Padding(
                              //     padding:
                              //         getPadding(left: 8, top: 34, right: 39),
                              //     child: Row(children: [
                              //       Text("lbl_key_details".tr,
                              //           overflow: TextOverflow.ellipsis,
                              //           textAlign: TextAlign.left,
                              //           style: AppStyle.txtManropeBold18
                              //               .copyWith(
                              //                   letterSpacing:
                              //                       getHorizontalSize(0.2))),
                              //       Padding(
                              //           padding: getPadding(
                              //               left: 30, top: 2, bottom: 2),
                              //           child: Text("msg_update_07_07_2".tr,
                              //               overflow: TextOverflow.ellipsis,
                              //               textAlign: TextAlign.left,
                              //               style: AppStyle
                              //                   .txtManropeRegular14Gray9001))
                              //     ])),
                              // Key details end
                              // Padding(
                              //     padding: getPadding(left: 8, top: 21),
                              //     child: Text("lbl_price_insights".tr,
                              //         overflow: TextOverflow.ellipsis,
                              //         textAlign: TextAlign.left,
                              //         style: AppStyle.txtManropeBold16.copyWith(
                              //             letterSpacing:
                              //                 getHorizontalSize(0.2)))),
                              // Padding(
                              //     padding:
                              //         getPadding(left: 8, top: 11, right: 39),
                              //     child: Row(children: [
                              //       Text("lbl_list_price".tr,
                              //           overflow: TextOverflow.ellipsis,
                              //           textAlign: TextAlign.left,
                              //           style: AppStyle
                              //               .txtManropeRegular14Gray9001),
                              //       Padding(
                              //           padding: getPadding(left: 200),
                              //           child: Text("lbl_3_000".tr,
                              //               overflow: TextOverflow.ellipsis,
                              //               textAlign: TextAlign.left,
                              //               style: AppStyle
                              //                   .txtManropeSemiBold14Gray900))
                              //     ])),
                              // Padding(
                              //     padding:
                              //         getPadding(left: 8, top: 12, right: 39),
                              //     child: Row(children: [
                              //       Padding(
                              //           padding: getPadding(top: 1),
                              //           child: Text("msg_est_mo_paymen".tr,
                              //               overflow: TextOverflow.ellipsis,
                              //               textAlign: TextAlign.left,
                              //               style: AppStyle
                              //                   .txtManropeRegular14Gray9001)),
                              //       Padding(
                              //           padding:
                              //               getPadding(left: 150, bottom: 1),
                              //           child: Text("lbl_15_0002".tr,
                              //               overflow: TextOverflow.ellipsis,
                              //               textAlign: TextAlign.left,
                              //               style: AppStyle
                              //                   .txtManropeSemiBold14Gray900))
                              //     ])),
                              // Padding(
                              //     padding:
                              //         getPadding(left: 8, top: 11, right: 39),
                              //     child: Row(children: [
                              //       Text("lbl_relax_estimate".tr,
                              //           overflow: TextOverflow.ellipsis,
                              //           textAlign: TextAlign.left,
                              //           style: AppStyle
                              //               .txtManropeRegular14Gray9001),
                              //       Padding(
                              //           padding: getPadding(left: 160),
                              //           child: Text("lbl_3_000".tr,
                              //               overflow: TextOverflow.ellipsis,
                              //               textAlign: TextAlign.left,
                              //               style: AppStyle
                              //                   .txtManropeSemiBold14Gray900))
                              //     ])),
                              // Padding(
                              //     padding:
                              //         getPadding(left: 8, top: 13, right: 39),
                              //     child: Row(children: [
                              //       Padding(
                              //           padding: getPadding(top: 1),
                              //           child: Text("lbl_price_sq_ft".tr,
                              //               overflow: TextOverflow.ellipsis,
                              //               textAlign: TextAlign.left,
                              //               style: AppStyle
                              //                   .txtManropeRegular14Gray9001)),
                              //       Padding(
                              //           padding:
                              //               getPadding(left: 220, bottom: 1),
                              //           child: Text("lbl2".tr,
                              //               overflow: TextOverflow.ellipsis,
                              //               textAlign: TextAlign.left,
                              //               style: AppStyle
                              //                   .txtManropeSemiBold14Gray900))
                              //     ])),
                              Padding(
                                  padding: getPadding(left: 8, top: 19),
                                  child: Text("Informations sur le bien",
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
                                        child: Text("En vente depuis",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtManropeRegular14Gray9001)),
                                    Padding(
                                        padding: getPadding(left: 150, top: 1),
                                        child: Text("30 jours",
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
                                        child: Text("Région",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtManropeRegular14Gray9001)),
                                    Padding(
                                        padding:
                                            getPadding(left: 196, bottom: 1),
                                        child: Text(assetDemo.region ?? "",
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
                                        child: Text("Département",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtManropeRegular14Gray9001)),
                                    Padding(
                                        padding:
                                            getPadding(left: 118, bottom: 1),
                                        child: Text(assetDemo.department ?? "",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtManropeSemiBold14Gray900))
                                  ])),
                              // Padding(
                              //     padding:
                              //         getPadding(left: 8, top: 11, right: 39),
                              //     child: Row(children: [
                              //       Text("lbl_mls".tr,
                              //           overflow: TextOverflow.ellipsis,
                              //           textAlign: TextAlign.left,
                              //           style: AppStyle
                              //               .txtManropeRegular14Gray9001),
                              //       Padding(
                              //           padding: getPadding(left: 180),
                              //           child: Text("lbl_42212314554".tr,
                              //               overflow: TextOverflow.ellipsis,
                              //               textAlign: TextAlign.left,
                              //               style: AppStyle
                              //                   .txtManropeSemiBold14Gray900))
                              //     ])),
                              Padding(
                                  padding:
                                      getPadding(left: 8, top: 12, right: 39),
                                  child: Row(children: [
                                    Text("Construit",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtManropeRegular14Gray9001),
                                    Padding(
                                        padding: getPadding(left: 208),
                                        child: Text("2004",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtManropeSemiBold14Gray900))
                                  ])),
                              // Padding(
                              //     padding:
                              //         getPadding(left: 8, top: 13, right: 39),
                              //     child: Row(children: [
                              //       Padding(
                              //           padding: getPadding(bottom: 1),
                              //           child: Text("lbl_lot_size".tr,
                              //               overflow: TextOverflow.ellipsis,
                              //               textAlign: TextAlign.left,
                              //               style: AppStyle
                              //                   .txtManropeRegular14Gray9001)),
                              //       Padding(
                              //           padding: getPadding(left: 142, top: 1),
                              //           child: Text("msg_3_400_square_fe".tr,
                              //               overflow: TextOverflow.ellipsis,
                              //               textAlign: TextAlign.left,
                              //               style: AppStyle
                              //                   .txtManropeSemiBold14Gray900))
                              //     ])),
                              Padding(
                                  padding: getPadding(left: 8, top: 15),
                                  child: Row(children: [
                                    Text("Voir plus",
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
                              // Amenties start
                              // Padding(
                              //     padding: getPadding(left: 8, top: 25),
                              //     child: Text("msg_popular_ameniti".tr,
                              //         overflow: TextOverflow.ellipsis,
                              //         textAlign: TextAlign.left,
                              //         style: AppStyle.txtManropeBold18.copyWith(
                              //             letterSpacing:
                              //                 getHorizontalSize(0.2)))),
                              // SingleChildScrollView(
                              //     scrollDirection: Axis.horizontal,
                              //     padding: getPadding(left: 11, top: 21),
                              //     child: IntrinsicWidth(
                              //         child: Row(
                              //             mainAxisAlignment:
                              //                 MainAxisAlignment.center,
                              //             children: [
                              //           Column(
                              //               mainAxisAlignment:
                              //                   MainAxisAlignment.start,
                              //               children: [
                              //                 CustomImageView(
                              //                     svgPath: ImageConstant
                              //                         .imgIconGray900,
                              //                     height: getSize(24),
                              //                     width: getSize(24)),
                              //                 Padding(
                              //                     padding: getPadding(top: 10),
                              //                     child: Text("lbl_sunning".tr,
                              //                         overflow:
                              //                             TextOverflow.ellipsis,
                              //                         textAlign: TextAlign.left,
                              //                         style: AppStyle
                              //                             .txtManropeSemiBold12
                              //                             .copyWith(
                              //                                 letterSpacing:
                              //                                     getHorizontalSize(
                              //                                         0.4))))
                              //               ]),
                              //           Padding(
                              //               padding:
                              //                   getPadding(left: 22, bottom: 1),
                              //               child: Column(
                              //                   mainAxisAlignment:
                              //                       MainAxisAlignment.start,
                              //                   children: [
                              //                     CustomImageView(
                              //                         svgPath: ImageConstant
                              //                             .imgSignal,
                              //                         height: getSize(24),
                              //                         width: getSize(24)),
                              //                     Padding(
                              //                         padding:
                              //                             getPadding(top: 9),
                              //                         child: Text(
                              //                             "lbl_free_wifi2".tr,
                              //                             overflow: TextOverflow
                              //                                 .ellipsis,
                              //                             textAlign:
                              //                                 TextAlign.left,
                              //                             style: AppStyle
                              //                                 .txtManropeSemiBold12
                              //                                 .copyWith(
                              //                                     letterSpacing:
                              //                                         getHorizontalSize(
                              //                                             0.4))))
                              //                   ])),
                              //           Padding(
                              //               padding:
                              //                   getPadding(left: 18, bottom: 1),
                              //               child: Column(
                              //                   mainAxisAlignment:
                              //                       MainAxisAlignment.start,
                              //                   children: [
                              //                     CustomImageView(
                              //                         svgPath: ImageConstant
                              //                             .imgAlarm,
                              //                         height: getSize(24),
                              //                         width: getSize(24)),
                              //                     Padding(
                              //                         padding:
                              //                             getPadding(top: 9),
                              //                         child: Text(
                              //                             "lbl_restaurant".tr,
                              //                             overflow: TextOverflow
                              //                                 .ellipsis,
                              //                             textAlign:
                              //                                 TextAlign.left,
                              //                             style: AppStyle
                              //                                 .txtManropeSemiBold12
                              //                                 .copyWith(
                              //                                     letterSpacing:
                              //                                         getHorizontalSize(
                              //                                             0.4))))
                              //                   ])),
                              //           Padding(
                              //               padding:
                              //                   getPadding(left: 33, bottom: 1),
                              //               child: Column(
                              //                   mainAxisAlignment:
                              //                       MainAxisAlignment.start,
                              //                   children: [
                              //                     CustomImageView(
                              //                         svgPath: ImageConstant
                              //                             .imgIcon24x24,
                              //                         height: getSize(24),
                              //                         width: getSize(24)),
                              //                     Padding(
                              //                         padding:
                              //                             getPadding(top: 9),
                              //                         child: Text("lbl_bar".tr,
                              //                             overflow: TextOverflow
                              //                                 .ellipsis,
                              //                             textAlign:
                              //                                 TextAlign.left,
                              //                             style: AppStyle
                              //                                 .txtManropeSemiBold12
                              //                                 .copyWith(
                              //                                     letterSpacing:
                              //                                         getHorizontalSize(
                              //                                             0.4))))
                              //                   ])),
                              //           Padding(
                              //               padding:
                              //                   getPadding(left: 36, bottom: 1),
                              //               child: Column(
                              //                   mainAxisAlignment:
                              //                       MainAxisAlignment.start,
                              //                   children: [
                              //                     CustomImageView(
                              //                         svgPath: ImageConstant
                              //                             .imgClock1,
                              //                         height: getSize(24),
                              //                         width: getSize(24)),
                              //                     Padding(
                              //                         padding:
                              //                             getPadding(top: 9),
                              //                         child: Text(
                              //                             "lbl_business".tr,
                              //                             overflow: TextOverflow
                              //                                 .ellipsis,
                              //                             textAlign:
                              //                                 TextAlign.center,
                              //                             style: AppStyle
                              //                                 .txtManropeSemiBold12
                              //                                 .copyWith(
                              //                                     letterSpacing:
                              //                                         getHorizontalSize(
                              //                                             0.4))))
                              //                   ]))
                              //         ]))),
                              // Padding(
                              //     padding: getPadding(left: 8, top: 15),
                              //     child: Row(children: [
                              //       Text("lbl_all_amenities".tr,
                              //           overflow: TextOverflow.ellipsis,
                              //           textAlign: TextAlign.left,
                              //           style: AppStyle.txtManropeBold14Blue500
                              //               .copyWith(
                              //                   letterSpacing:
                              //                       getHorizontalSize(0.2))),
                              //       CustomImageView(
                              //           svgPath:
                              //               ImageConstant.imgArrowright16x16,
                              //           height: getSize(16),
                              //           width: getSize(16),
                              //           margin: getMargin(
                              //               left: 14, top: 1, bottom: 2))
                              //     ])),
                              // Padding(
                              //     padding: getPadding(top: 24),
                              //     child: Divider(
                              //         height: getVerticalSize(1),
                              //         thickness: getVerticalSize(1),
                              //         color: ColorConstant.gray300,
                              //         indent: getHorizontalSize(8),
                              //         endIndent: getHorizontalSize(39))),
                              // Amenties end

                              // Reviews start
                              // Padding(
                              //     padding:
                              //         getPadding(left: 8, top: 23, right: 39),
                              //     child: Row(children: [
                              //       Text("lbl_reviews".tr,
                              //           overflow: TextOverflow.ellipsis,
                              //           textAlign: TextAlign.left,
                              //           style: AppStyle.txtManropeBold18
                              //               .copyWith(
                              //                   letterSpacing:
                              //                       getHorizontalSize(0.2))),
                              //       Padding(
                              //           padding: getPadding(
                              //               left: 140, top: 4, bottom: 3),
                              //           child: Text("msg_view_all_review".tr,
                              //               overflow: TextOverflow.ellipsis,
                              //               textAlign: TextAlign.left,
                              //               style: AppStyle
                              //                   .txtManropeBold12Blue500
                              //                   .copyWith(
                              //                       letterSpacing:
                              //                           getHorizontalSize(
                              //                               0.4))))
                              //     ])),
                              // Padding(
                              //     padding: getPadding(left: 8, top: 14),
                              //     child: Row(children: [
                              //       Text("lbl_4_9".tr,
                              //           overflow: TextOverflow.ellipsis,
                              //           textAlign: TextAlign.left,
                              //           style: AppStyle.txtManropeBold32
                              //               .copyWith(
                              //                   letterSpacing:
                              //                       getHorizontalSize(0.2))),
                              //       CustomImageView(
                              //           svgPath: ImageConstant.imgTicket,
                              //           height: getVerticalSize(15),
                              //           width: getHorizontalSize(96),
                              //           margin: getMargin(
                              //               left: 12, top: 13, bottom: 14)),
                              //       Padding(
                              //           padding: getPadding(
                              //               left: 14, top: 15, bottom: 11),
                              //           child: Text("lbl_100_ratings".tr,
                              //               overflow: TextOverflow.ellipsis,
                              //               textAlign: TextAlign.left,
                              //               style: AppStyle
                              //                   .txtManropeMedium12Gray900
                              //                   .copyWith(
                              //                       letterSpacing:
                              //                           getHorizontalSize(
                              //                               0.4))))
                              //     ])),
                              // Padding(
                              //     padding:
                              //         getPadding(left: 8, top: 6, right: 39),
                              //     child: Obx(() => ListView.separated(
                              //         physics: NeverScrollableScrollPhysics(),
                              //         shrinkWrap: true,
                              //         separatorBuilder: (context, index) {
                              //           return SizedBox(
                              //               height: getVerticalSize(3));
                              //         },
                              //         itemCount: controller
                              //             .productDetailsModelObj
                              //             .value
                              //             .listfiveItemList
                              //             .length,
                              //         itemBuilder: (context, index) {
                              //           ListfiveItemModel model = controller
                              //               .productDetailsModelObj
                              //               .value
                              //               .listfiveItemList[index];
                              //           return ListfiveItemWidget(model);
                              //         }))),
                              // Padding(
                              //     padding: getPadding(top: 24),
                              //     child: Divider(
                              //         height: getVerticalSize(1),
                              //         thickness: getVerticalSize(1),
                              //         color: ColorConstant.gray300,
                              //         indent: getHorizontalSize(8),
                              //         endIndent: getHorizontalSize(39))),
                              // Reviews end

                              // Padding(
                              //     padding: getPadding(left: 8, top: 25),
                              //     child: Text("msg_sale_tax_hist".tr,
                              //         overflow: TextOverflow.ellipsis,
                              //         textAlign: TextAlign.left,
                              //         style: AppStyle.txtManropeBold18.copyWith(
                              //             letterSpacing:
                              //                 getHorizontalSize(0.2)))),
                              // Container(
                              //     margin:
                              //         getMargin(left: 8, top: 17, right: 39),
                              //     padding: getPadding(all: 4),
                              //     decoration: AppDecoration.fillBluegray50
                              //         .copyWith(
                              //             borderRadius: BorderRadiusStyle
                              //                 .roundedBorder10),
                              //     child: Row(
                              //         mainAxisSize: MainAxisSize.min,
                              //         children: [
                              //           CustomButton(
                              //               height: getVerticalSize(40),
                              //               width: getHorizontalSize(150),
                              //               text: "lbl_sale_history".tr,
                              //               variant: ButtonVariant
                              //                   .OutlineBluegray40014,
                              //               shape: ButtonShape.RoundedBorder5,
                              //               padding: ButtonPadding.PaddingAll12,
                              //               fontStyle: ButtonFontStyle
                              //                   .ManropeBold14Gray900_1),
                              //           Padding(
                              //               padding: getPadding(
                              //                   left: 40,
                              //                   top: 11,
                              //                   right: 40,
                              //                   bottom: 8),
                              //               child: Text("lbl_tax_history".tr,
                              //                   overflow: TextOverflow.ellipsis,
                              //                   textAlign: TextAlign.left,
                              //                   style: AppStyle
                              //                       .txtManropeSemiBold14))
                              //         ])),
                              // Padding(
                              //     padding: getPadding(left: 8, top: 18),
                              //     child: CustomRadioButton(
                              //         text: "msg_notify_me_when".tr,
                              //         value: "msg_notify_me_when".tr,
                              //         groupValue: controller.radioGroup.value,
                              //         margin: getMargin(left: 8, top: 18),
                              //         fontStyle:
                              //             RadioFontStyle.ManropeMedium14Gray900,
                              //         onChange: (value) {
                              //           controller.radioGroup.value = value;
                              //         })),
                              Padding(
                                  padding: getPadding(left: 8, top: 19),
                                  child: Text("Historique de prix",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtManropeBold16.copyWith(
                                          letterSpacing:
                                              getHorizontalSize(0.2)))),
                              Padding(
                                  padding:
                                      getPadding(left: 8, top: 15, right: 39),
                                  // child: Text("Mettre stats ici")),
                                  child:
                                      // image
                                      Column(
                                    children: [
                                      Container(
                                          height: getVerticalSize(200),
                                          width: getHorizontalSize(327),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      getHorizontalSize(10)),
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      ImageConstant.stat3),
                                                  fit: BoxFit.contain))),
                                      // Container(
                                      //     height: getVerticalSize(200),
                                      //     width: getHorizontalSize(327),
                                      //     decoration: BoxDecoration(
                                      //         borderRadius: BorderRadius.circular(
                                      //             getHorizontalSize(10)),
                                      //         image: DecorationImage(
                                      //             image: AssetImage(
                                      //                 ImageConstant.stat1),
                                      //             fit: BoxFit.cover))),
                                    ],
                                  )),
                              Padding(
                                  padding: getPadding(top: 16),
                                  child: Divider(
                                      height: getVerticalSize(1),
                                      thickness: getVerticalSize(1),
                                      color: ColorConstant.gray300,
                                      indent: getHorizontalSize(8),
                                      endIndent: getHorizontalSize(39))),
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
                                    child: Text("Prix",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtManropeMedium14Gray9001)),
                                Text(assetDemo.price.toString() + " €",
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
                                // CustomIconButton(
                                //     height: 44,
                                //     width: 44,
                                //     margin: getMargin(top: 2, bottom: 2),
                                //     variant:
                                //         IconButtonVariant.OutlineBluegray50_1,
                                //     padding: IconButtonPadding.PaddingAll12,
                                //     child: CustomImageView(
                                //         svgPath: ImageConstant.imgFavorite)),
                                // CustomButton(
                                //     height: getVerticalSize(48),
                                //     text: "lbl_schedule_tour".tr,
                                //     shape: ButtonShape.RoundedBorder10,
                                //     padding: ButtonPadding.PaddingAll13,
                                //     fontStyle: ButtonFontStyle
                                //         .ManropeBold16WhiteA700_1)
                              ]))
                    ]))));
  }
}
