import 'package:flutter/material.dart';
import 'package:immo_scanner/core/app_export.dart';
import 'package:immo_scanner/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class AppbarIconbutton1 extends StatelessWidget {
  AppbarIconbutton1({Key? key, this.imagePath, this.svgPath, this.margin, this.onTap}) : super(key: key);

  String? imagePath;

  String? svgPath;

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap?.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: CustomIconButton(
          height: 40,
          width: 40,
          child: CustomImageView(
            svgPath: svgPath,
            imagePath: imagePath,
          ),
        ),
      ),
    );
  }
}
