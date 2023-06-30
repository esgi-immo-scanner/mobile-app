import 'package:get/get.dart';
import 'sliderarrowleft_item_model.dart';
import 'listfive_item_model.dart';
import 'listdate_item_model.dart';
import 'listrectangle4224_item_model.dart';

class ProductDetailsModel {
  RxList<SliderarrowleftItemModel> sliderarrowleftItemList =
      RxList.generate(1, (index) => SliderarrowleftItemModel());
  // Initialize list with "https://github.com/esgi-immo-scanner/mobile_app/blob/main/assets/images/studio_1.jpg?raw=true"
  // RxList<SliderarrowleftItemModel> sliderArrowRightItemList = RxList([
    // SliderarrowleftItemModel(id: "1",image:"https://github.com/esgi-immo-scanner/mobile_app/blob/main/assets/images/studio_1.jpg?raw=true"),
    // SliderarrowleftItemModel(id: "1",image:"https://github.com/esgi-immo-scanner/mobile_app/blob/main/assets/images/studio_1.jpg?raw=true"),
  // ]);

  // 
  List<String> sliderArrowRightItemList = ["https://github.com/esgi-immo-scanner/mobile_app/blob/main/assets/images/studio_1.jpg?raw=true"];

  RxList<ListfiveItemModel> listfiveItemList =
      RxList.generate(5, (index) => ListfiveItemModel());

  RxList<ListdateItemModel> listdateItemList =
      RxList.generate(5, (index) => ListdateItemModel());

  RxList<Listrectangle4224ItemModel> listrectangle4224ItemList =
      RxList.generate(3, (index) => Listrectangle4224ItemModel());
}
