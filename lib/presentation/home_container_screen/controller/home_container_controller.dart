import 'package:immo_scanner/core/app_export.dart';
import 'package:immo_scanner/presentation/home_container_screen/models/home_container_model.dart';

class HomeContainerController extends GetxController {
  var token = "";
  // var token = Get.arguments[NavigationArgs.token];

// Todo remettre les getArgs
  // var id = Get.arguments[NavigationArgs.id];
  var id = "";

  Rx<HomeContainerModel> homeContainerModelObj = HomeContainerModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  @override
  void onInit() {}
}
