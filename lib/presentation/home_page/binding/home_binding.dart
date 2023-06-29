
import 'package:get/get.dart';
import 'package:immo_scanner/presentation/recently_views_screen/controller/recently_views_controller.dart';

class RecentlyViewsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RecentlyViewsController());
  }
}
