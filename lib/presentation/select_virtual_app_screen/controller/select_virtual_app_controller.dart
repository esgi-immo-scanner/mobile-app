import 'package:immo_scanner/core/app_export.dart';
import 'package:immo_scanner/presentation/select_virtual_app_screen/models/select_virtual_app_model.dart';

class SelectVirtualAppController extends GetxController {
  Rx<SelectVirtualAppModel> selectVirtualAppModelObj =
      SelectVirtualAppModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    selectVirtualAppModelObj.value.listwhatsappItemList.forEach((element) {
      element.streetaddressController.dispose();
    });
  }
}
