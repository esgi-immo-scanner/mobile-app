import 'package:get/get.dart';
import 'package:immo_scanner/core/utils/image_constant.dart';

class LessMoreItemModel {

  LessMoreItemModel(titleTxt,valueTxt,id){
    this.titleTxt.value = titleTxt;
    this.valueTxt.value = valueTxt;
    id = id;

  }

  Rx<String> iconMoins = Rx(ImageConstant.imgClock24x24);


  Rx<String> titleTxt = Rx("Title");

  Rx<String> valueTxt = Rx("0");

  String? id = "";

  decrementValue(){
    int value = int.parse(valueTxt.value);
    if(value > 0){
      value--;
      valueTxt.value = value.toString();
      iconMoins.value = ImageConstant.imgClock24x24Blue;
    }
    if(value == 0){
      iconMoins.value = ImageConstant.imgClock24x24;
    }
  }

  incrementValue(){
    int value = int.parse(valueTxt.value);
    value++;
    valueTxt.value = value.toString();
    if(value != 0){
      iconMoins.value = ImageConstant.imgClock24x24Blue;
    }
  }

  resetValue(){
    valueTxt.value = "0";
    iconMoins.value = ImageConstant.imgClock24x24;
  }
}
