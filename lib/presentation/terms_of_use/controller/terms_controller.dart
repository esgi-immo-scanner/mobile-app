import 'package:immo_scanner/core/app_export.dart';
import 'package:immo_scanner/presentation/terms_of_use/models/terms_model.dart';

class TermsController extends GetxController {
  Rx<TermsModel> settingsModelObj = TermsModel().obs;

  RxBool isSelectedSwitch = false.obs;

  RxBool isSelectedSwitch1 = false.obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
