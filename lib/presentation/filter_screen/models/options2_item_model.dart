import 'package:get/get.dart';

class Options2ItemModel {

  Options2ItemModel(title){
    this.title.value = title;
    isSelected.value = false;
  }

  Rx<String> title = Rx("");

  RxBool isSelected = false.obs;
}
