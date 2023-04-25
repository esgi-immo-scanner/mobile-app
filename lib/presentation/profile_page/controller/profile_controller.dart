import 'package:immo_scanner/core/app_export.dart';import 'package:immo_scanner/presentation/profile_page/models/profile_model.dart';class ProfileController extends GetxController {ProfileController(this.profileModelObj);

Rx<ProfileModel> profileModelObj;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); } 
 }
