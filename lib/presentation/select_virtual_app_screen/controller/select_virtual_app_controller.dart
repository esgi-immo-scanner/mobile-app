import 'package:immo_scanner/core/app_export.dart';import 'package:immo_scanner/presentation/select_virtual_app_screen/models/select_virtual_app_model.dart';class SelectVirtualAppController extends GetxController {Rx<SelectVirtualAppModel> selectVirtualAppModelObj = SelectVirtualAppModel().obs;

@override void onClose() { super.onClose(); for (var element in selectVirtualAppModelObj.value.listwhatsappItemList) {element.streetaddressController.dispose();} } 
 }
