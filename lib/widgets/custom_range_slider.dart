import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomRangeSliderController extends GetxController {
  RangeValues values = const RangeValues(0, 50000000);

  void onRangeChanged(RangeValues newValues) {
    // Print newValues
    print(newValues);
    if(values != null){
      values = newValues;
      update(); // this will update the UI with the new values
    }
  }
  Text get sliderValueText {
    print("Updating UI with new values: ${values.start.round()} - ${values.end.round()}");
    return Text('Slider values: ${values.start.round()} - ${values.end.round()}');
  }

}