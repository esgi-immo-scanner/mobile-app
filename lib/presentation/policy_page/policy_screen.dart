import 'controller/policy_controller.dart';
import 'package:flutter/material.dart';
import 'package:immo_scanner/core/app_export.dart';
import 'package:immo_scanner/widgets/app_bar/appbar_iconbutton_1.dart';
import 'package:immo_scanner/widgets/app_bar/appbar_subtitle.dart';
import 'package:immo_scanner/widgets/app_bar/custom_app_bar.dart';
import 'package:immo_scanner/widgets/custom_switch.dart';

class PolicyScreen extends GetWidget<PolicyController> {
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
            title: AppbarSubtitle(text: "Policy of use")),
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
                text: 'Nous sommes ImmoScan, le contrôleur des données que vous fournissez à travers notre application. Nous prenons votre vie privée au sérieux. Cette politique de confidentialité décrit quelles informations nous recueillons et comment nous les utilisons.\n\n',
                style: TextStyle(fontSize: 16, color: Colors.black87),
              ),
              TextSpan(
                text: 'Collecte et utilisation des informations\n\n',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24, color: Colors.black),
              ),
              TextSpan(
                text: 'Nous collectons les informations suivantes lorsque vous vous inscrivez sur notre application : votre nom, prénom, e-mail et une zone géographique spécifique. Nous utilisons ces informations pour vous fournir un service personnalisé et pour améliorer notre application. Les données sont conservées pendant une période de 2ans.\n\n',
                style: TextStyle(fontSize: 16, color: Colors.black87),
              ),
              TextSpan(
                text: 'Transferts de données en dehors de l’UE\n\n',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24, color: Colors.black),
              ),
              TextSpan(
                text: 'Si nous transférons vos données personnelles en dehors de l’UE, nous le faisons sur la base légale, et nous prenons toutes les mesures nécessaires pour garantir que vos données sont traitées en toute sécurité.\n\n',
                style: TextStyle(fontSize: 16, color: Colors.black87),
              ),
              TextSpan(
                text: 'Vos droits\n\n',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24, color: Colors.black),
              ),
              TextSpan(
                text: 'Vous avez le droit d’accéder à vos données, de les rectifier, de demander leur suppression, de restreindre leur traitement, de vous opposer à leur traitement, et de demander leur transférabilité. Pour exercer ces droits, veuillez nous contacter à contact@immoscan.com Vous avez également le droit de déposer une plainte auprès de l’autorité de contrôle de votre pays.\n\n',
                style: TextStyle(fontSize: 16, color: Colors.black87),
              ),
              TextSpan(
                text: 'Modifications de cette politique\n\n',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24, color: Colors.black),
              ),
              TextSpan(
                text: 'Nous nous réservons le droit de modifier cette politique de confidentialité à tout moment. Toutes modifications seront mises à jour dans cette application.',
                style: TextStyle(fontSize: 16, color: Colors.black87),
              ),
            ],
          ),
        ),
      ),
        ),
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
