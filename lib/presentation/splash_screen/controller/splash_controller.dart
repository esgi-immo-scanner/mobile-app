import 'package:immo_scanner/core/app_export.dart';
import 'package:immo_scanner/presentation/splash_screen/models/splash_model.dart';

class SplashController extends GetxController {
  Rx<SignOutModel> splashModelObj = SignOutModel().obs;

  @override
  void onReady() {
    super.onReady();
    Future.delayed(const Duration(milliseconds: 2000), () {
      Get.toNamed(AppRoutes.onboardingScreen);
    });
  }

  @override
  void onClose() {
    super.onClose();
  }
}
