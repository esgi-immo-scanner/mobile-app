import 'package:immo_scanner/core/app_export.dart';import 'package:immo_scanner/presentation/favorite_screen/models/favorite_model.dart';class FavoriteController extends GetxController {Rx<FavoriteModel> favoriteModelObj = FavoriteModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); } 
 }
