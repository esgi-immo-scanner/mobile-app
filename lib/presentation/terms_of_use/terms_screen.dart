import 'controller/terms_controller.dart';
import 'package:flutter/material.dart';
import 'package:immo_scanner/core/app_export.dart';
import 'package:immo_scanner/widgets/app_bar/appbar_iconbutton_1.dart';
import 'package:immo_scanner/widgets/app_bar/appbar_subtitle.dart';
import 'package:immo_scanner/widgets/app_bar/custom_app_bar.dart';
import 'package:immo_scanner/widgets/custom_switch.dart';

class TermsScreen extends GetWidget<TermsController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.gray50,
        appBar: CustomAppBar(
            height: getVerticalSize(48),
            leadingWidth: 64,
            leading: AppbarIconbutton1(
                svgPath: ImageConstant.imgArrowleft,
                margin: getMargin(left: 24),
                onTap: onTapArrowleft16),
            centerTitle: true,
            title: AppbarSubtitle(text: "Terms of use")),
        body: Container(
          width: double.maxFinite,
          padding: getPadding(left: 24, top: 34, right: 24, bottom: 34),
          child: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: RichText(
          text: TextSpan(
            style: Theme.of(context).textTheme.bodyText2,
            children: <TextSpan>[
              TextSpan(
                text: 'Introduction\n\n',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24, color: Colors.black),
              ),
              TextSpan(
                text: 'Bienvenue sur notre application de recherche immobilière. En vous inscrivant et en utilisant cette application, vous acceptez les termes et conditions suivants.\n\n',
                style: TextStyle(fontSize: 16, color: Colors.black87),
              ),
              TextSpan(
                text: 'Inscription\n\n',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24, color: Colors.black),
              ),
              TextSpan(
                text: 'Pour utiliser notre application, vous devez vous inscrire en fournissant votre nom, prénom, e-mail et une zone géographique spécifique. Ces informations sont nécessaires pour vous fournir le meilleur service possible.\n\n',
                style: TextStyle(fontSize: 16, color: Colors.black87),
              ),
              TextSpan(
                text: 'Utilisation des services\n\n',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24, color: Colors.black),
              ),
              TextSpan(
                text: 'En utilisant notre service, vous vous engagez à ne pas utiliser l’information de manière illégale ou préjudiciable. Vous acceptez que l’utilisation des informations fournies sera à vos risques et périls.\n\n',
                style: TextStyle(fontSize: 16, color: Colors.black87),
              ),
              TextSpan(
                text: 'Modification des termes\n\n',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24, color: Colors.black),
              ),
              TextSpan(
                text: 'Nous nous réservons le droit de modifier ces termes et conditions à tout moment. Toutes modifications seront mises à jour dans cette application.',
                style: TextStyle(fontSize: 16, color: Colors.black87),
              ),
            ],
          ),
        ),
      ),),
      ),
    );
  }

  onTapFaqs() {
    Get.toNamed(AppRoutes.faqsGetHelpScreen);
  }

  onTapArrowleft16() {
    Get.back();
  }
}
