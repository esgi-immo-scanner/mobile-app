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
          title: "Propriété 7 pièces 205 m²",
          description: "propriété 6 chambres, piscine 6000m² terrain",
          area: 205,
          GES: "B",
          DPE: "B",
          price: 735000,
          roomCount: 7,
          pictures: "https://github.com/esgi-immo-scanner/mobile_app/blob/main/assets/images/img_img_180x327_2.png?raw=true"
          ));
    assetList.value.add(
        Asset(
          id: "2",
          title: "Maison 5 pièces 125 m²",
          description: "La maison est située à Evreux, dans une voie sans issue",
          area: 125,
          GES: "C",
          DPE: "C",
          price: 167000,
          roomCount: 5,
          pictures: "https://github.com/esgi-immo-scanner/mobile_app/blob/main/assets/images/img_img_418x327_2.png?raw=true"
          ));
    assetList.value.add(
        Asset(
          id: "3",
          title: "Maison 6 pièces 128 m²",
          description: "Cette maison mitoyenne, proche de la nature",
          area: 128,
          GES: "B",
          DPE: "B",
          price: 325000,
          roomCount: 6,
          pictures: "https://github.com/esgi-immo-scanner/mobile_app/blob/main/assets/images/img_img_418x327_1.png?raw=true"
          ));
          dataCreated=true;
    }
  }
}
