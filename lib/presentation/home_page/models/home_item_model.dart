import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:get/get.dart';

class HomeItemModel {
  String? id = "";
  String? title = "";
  String? subTitle = "";
  String? imgPath = "";
  String? price = "";
  
  HomeItemModel({
    this.id,
    this.title,
    this.subTitle,
    this.imgPath,
    this.price,
  });

  HomeItemModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    subTitle = json['subTitle'];
    imgPath = json['imgPath'];
    price = json['price'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['title'] = title;
    data['subTitle'] = subTitle;
    data['imgPath'] = imgPath;
    data['price'] = price;
    return data;
  }

  // static Future<List<HomeItemModel>> getHomeItems() async {
  //   final String response = await rootBundle.loadString('assets/products.json');
  //   final jsonStr = await json.decode(response);
  //   return List<HomeItemModel>.from(
  //       jsonStr.map((x) => HomeItemModel.fromJson(x)));
  // }

  
}
