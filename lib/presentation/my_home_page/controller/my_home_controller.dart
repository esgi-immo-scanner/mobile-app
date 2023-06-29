import 'package:asset_manager/api.dart';
import 'package:immo_scanner/core/app_export.dart';
import 'package:immo_scanner/presentation/my_home_page/models/my_home_model.dart';

class MyHomeController extends GetxController {
  MyHomeController(this.myHomeModelObj);

  Rx<MyHomeModel> myHomeModelObj;
  RxList<Asset> assetList = <Asset>[].obs;
  bool dataCreated = false;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  createDefaultData() {
    if(!dataCreated){

    assetList.value.add(
        Asset(
          id: "1",
          title: "Asset 1",
          description: "Asset 1 description",
          area: 100,
          GES: "A",
          DPE: "A",
          price: 100000,
          roomCount: 3,
          ));
    assetList.value.add(
        Asset(
          id: "2",
          title: "Asset 2",
          description: "Asset 1 description",
          area: 100,
          GES: "A",
          DPE: "A",
          price: 100000,
          roomCount: 3,
          ));
    assetList.value.add(
        Asset(
          id: "3",
          title: "Asset 3",
          description: "Asset 1 description",
          area: 100,
          GES: "A",
          DPE: "A",
          price: 100000,
          roomCount: 3,
          ));
          dataCreated=true;
    }
  }
}
