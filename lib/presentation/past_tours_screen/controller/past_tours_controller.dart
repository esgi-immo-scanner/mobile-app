import 'package:immo_scanner/core/app_export.dart';import 'package:immo_scanner/presentation/past_tours_screen/models/past_tours_model.dart';class PastToursController extends GetxController {Rx<PastToursModel> pastToursModelObj = PastToursModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); } 
 }
