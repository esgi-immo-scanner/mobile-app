import 'package:immo_scanner/core/app_export.dart';import 'package:immo_scanner/presentation/home_alarm_screen/models/home_alarm_model.dart';import 'package:flutter/material.dart';class HomeAlarmController extends GetxController {TextEditingController group34552Controller = TextEditingController();

Rx<HomeAlarmModel> homeAlarmModelObj = HomeAlarmModel().obs;

SelectionPopupModel? selectedDropDownValue;

@override void onClose() { super.onClose(); group34552Controller.dispose(); } 
onSelected(dynamic value) { selectedDropDownValue = value as SelectionPopupModel; for (var element in homeAlarmModelObj.value.dropdownItemList) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} homeAlarmModelObj.value.dropdownItemList.refresh(); } 
 }
