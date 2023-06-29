
import 'package:immo_scanner/core/app_export.dart';
import 'package:immo_scanner/presentation/policy_page/models/policy_model.dart';

class PolicyController extends GetxController {
  Rx<PolicyModel> settingsModelObj = PolicyModel().obs;

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
