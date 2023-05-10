import 'package:get/get.dart';

class LessMoreItemModel {

  LessMoreItemModel(titleTxt,valueTxt,id){
    this.titleTxt.value = titleTxt;
    this.valueTxt.value = valueTxt;
    id = id;
  }


  Rx<String> titleTxt = Rx("Title");

  Rx<String> valueTxt = Rx("2");

  String? id = "";

  decrementValue(){
    int value = int.parse(valueTxt.value);
    if(value > 0){
      value--;
      valueTxt.value = value.toString();
    }
  }

  incrementValue(){
    int value = int.parse(valueTxt.value);
    value++;
    valueTxt.value = value.toString();
  }
}
