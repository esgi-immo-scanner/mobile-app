import 'dart:convert';

import 'package:immo_scanner/core/app_export.dart';
import 'package:immo_scanner/presentation/home_page/models/home_item_model.dart';
import 'package:immo_scanner/presentation/home_page/models/home_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomeController extends GetxController {
  HomeController(this.homeModelObj);

  TextEditingController group34551Controller = TextEditingController();
  HomeItemModel? home_item_model;

  Rx<HomeModel> homeModelObj;

  var _homeItemsList = <HomeItemModel>[].obs;
  var isDataLoading = false.obs;

  SelectionPopupModel? selectedDropDownValue;

  @override
  void onInit() {
    getApi();
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    group34551Controller.dispose();
  }

  onSelected(dynamic value) {
    selectedDropDownValue = value as SelectionPopupModel;
    homeModelObj.value.dropdownItemList.forEach((element) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    });
    homeModelObj.value.dropdownItemList.refresh();
  }

  // void _initHomeItems() async {
  //   List<HomeItemModel> products = await HomeItemModel.getHomeItems();
  //   _homeItemsList.addAll(products);
  // }

  getApi() async {
    try{
      isDataLoading(true);
      http.Response response = await http.get(
          Uri.tryParse('http://dummyapi.io/data/v1/user')!,
          headers: {'app-id': '6218809df11d1d412af5bac4'}
      );
      if(response.statusCode == 200){
        ///data successfully

        var result = jsonDecode(response.body);

        home_item_model =  HomeItemModel.fromJson(result);
      }else{
        ///error
      }
    }catch(e){
      print('Error while getting data is $e');
    }finally{
      isDataLoading(false);
    }
  }
}
