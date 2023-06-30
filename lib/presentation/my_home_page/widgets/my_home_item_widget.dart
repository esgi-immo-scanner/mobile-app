import 'package:asset_manager/api.dart';

import '../controller/my_home_controller.dart';
import '../models/my_home_item_model.dart';
import 'package:flutter/material.dart';
import 'package:immo_scanner/core/app_export.dart';

// ignore: must_be_immutable
class MyHomeItemWidget extends StatelessWidget {
  MyHomeItemWidget(this.asset, {this.onTapProperty});

  Asset asset;

  var controller = Get.find<MyHomeController>();

  VoidCallback? onTapProperty;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapProperty?.call();
      },
      child: Container(
        decoration: AppDecoration.outlineGray3001.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder10,
        ),
        child: Row(
          children: [
            CustomImageView(
              url: asset.pictures ?? "",
              height: getVerticalSize(
                109,
              ),
              width: getHorizontalSize(
                102,
              ),
              radius: BorderRadius.only(
                topLeft: Radius.circular(
                  getHorizontalSize(
                    10,
                  ),
                ),
                bottomLeft: Radius.circular(
                  getHorizontalSize(
                    10,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: getPadding(
                  left: 16,
                  top: 15,
                  bottom: 12,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                      Text(
                        asset.title ?? "",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtManropeBold16.copyWith(
                          letterSpacing: getHorizontalSize(
                            0.2,
                          ),
                        ),
                      ),
                    Padding(
                      padding: getPadding(
                        top: 7,
                      ),
                      child: Row(
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgDpe,
                            height: getSize(
                              16,
                            ),
                            width: getSize(
                              16,
                            ),
                            margin: getMargin(
                              top: 1,
                              bottom: 3,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 4,
                            ),
                            child: Text(
                              asset.DPE ?? "",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtManropeMedium14Bluegray500,
                            ),
                          ),
                          CustomImageView(
                            svgPath: ImageConstant.imgPrinter,
                            height: getSize(
                              16,
                            ),
                            width: getSize(
                              16,
                            ),
                            margin: getMargin(
                              left: 12,
                              top: 1,
                              bottom: 3,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 4,
                            ),
                            child: Text(
                              asset.roomCount.toString() ?? "",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtManropeMedium14Bluegray500,
                            ),
                          ),
                          CustomImageView(
                            svgPath: ImageConstant.imgOffer,
                            height: getSize(
                              16,
                            ),
                            width: getSize(
                              16,
                            ),
                            margin: getMargin(
                              left: 12,
                              top: 1,
                              bottom: 3,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 4,
                            ),
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: asset.area.toString() ?? "",
                                    style: TextStyle(
                                      color: ColorConstant.blueGray500,
                                      fontSize: getFontSize(
                                        14,
                                      ),
                                      fontFamily: 'Manrope',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  TextSpan(
                                    text: " ",
                                    style: TextStyle(
                                      color: ColorConstant.blueGray500,
                                      fontSize: getFontSize(
                                        14,
                                      ),
                                      fontFamily: 'Manrope',
                                      fontWeight: FontWeight.w800,
                                      letterSpacing: getHorizontalSize(
                                        0.2,
                                      ),
                                    ),
                                  ),
                                  TextSpan(
                                    text: " m²",
                                    style: TextStyle(
                                      color: ColorConstant.blueGray500,
                                      fontSize: getFontSize(
                                        10,
                                      ),
                                      fontFamily: 'Manrope',
                                      fontWeight: FontWeight.w500,
                                      letterSpacing: getHorizontalSize(
                                        0.4,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        top: 8,
                      ),
                      child: Text(
                        asset.price.toString() + " €" ?? "",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtManropeExtraBold16.copyWith(
                          letterSpacing: getHorizontalSize(
                            0.2,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
