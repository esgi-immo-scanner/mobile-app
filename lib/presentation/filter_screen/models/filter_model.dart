import 'package:get/get.dart';
import 'listimg_item_model.dart';
import 'lessMoreCounter_item_model.dart';
import 'package:immo_scanner/data/models/selectionPopupModel/selection_popup_model.dart';
import 'chipviewhome_item_model.dart';
import 'options2_item_model.dart';

class FilterModel {
  RxList<ListimgItemModel> listimgItemList =
      RxList.generate(2, (index) => ListimgItemModel());

  RxList<LessMoreItemModel> listMoreLessItemList =
      [
    LessMoreItemModel(
      "Nombre chambres",
      "0",
      "chambres"),
    LessMoreItemModel(
      "Nombre pièces",
      "0",
      "pieces"),
      ].obs;

  RxList<SelectionPopupModel> dropdownItemListDPEMin = [
    SelectionPopupModel(
      id: 0,
      title: "Min",
      isSelected: true,
    ),
    SelectionPopupModel(
      id: 1,
      title: "A",
    ),
    SelectionPopupModel(
      id: 2,
      title: "B",
    ),
    SelectionPopupModel(
      id: 3,
      title: "C",
    ),
    SelectionPopupModel(
      id: 4,
      title: "D",
    ),
    SelectionPopupModel(
      id: 5,
      title: "E",
    ),
    SelectionPopupModel(
      id: 6,
      title: "F",
    ),
  ].obs;

  RxList<SelectionPopupModel> dropdownItemListDPEMax = [
    SelectionPopupModel(
      id: 0,
      title: "Min",
      isSelected: true,
    ),
    SelectionPopupModel(
      id: 1,
      title: "A",
    ),
    SelectionPopupModel(
      id: 2,
      title: "B",
    ),
    SelectionPopupModel(
      id: 3,
      title: "C",
    ),
    SelectionPopupModel(
      id: 4,
      title: "D",
    ),
    SelectionPopupModel(
      id: 5,
      title: "E",
    ),
    SelectionPopupModel(
      id: 6,
      title: "F",
    ),
  ].obs;

  RxList<SelectionPopupModel> dropdownItemGESMin = [
    SelectionPopupModel(
      id: 0,
      title: "Min",
      isSelected: true,
    ),
    SelectionPopupModel(
      id: 1,
      title: "A",
    ),
    SelectionPopupModel(
      id: 2,
      title: "B",
    ),
    SelectionPopupModel(
      id: 3,
      title: "C",
    ),
    SelectionPopupModel(
      id: 4,
      title: "D",
    ),
    SelectionPopupModel(
      id: 5,
      title: "E",
    ),
    SelectionPopupModel(
      id: 6,
      title: "F",
    ),
  ].obs;

  RxList<SelectionPopupModel> dropdownItemGESMax =[
    SelectionPopupModel(
      id: 0,
      title: "Min",
      isSelected: true,
    ),
    SelectionPopupModel(
      id: 1,
      title: "A",
    ),
    SelectionPopupModel(
      id: 2,
      title: "B",
    ),
    SelectionPopupModel(
      id: 3,
      title: "C",
    ),
    SelectionPopupModel(
      id: 4,
      title: "D",
    ),
    SelectionPopupModel(
      id: 5,
      title: "E",
    ),
    SelectionPopupModel(
      id: 6,
      title: "F",
    ),
  ].obs;

  // RxList<Options2ItemModel> options2ItemList =
  //     RxList.generate(8, (index) => Options2ItemModel());
  RxList<Options2ItemModel> options2ItemList = [
    Options2ItemModel(
      "Ascenceur",
    ),
    Options2ItemModel(
      "RDC",
    ),
    Options2ItemModel(
      "Places de parking",
    ),
    Options2ItemModel(
      "Urgent",
    ),
    Options2ItemModel(
      "Sans honoraires",
    ),
  ].obs;

}
