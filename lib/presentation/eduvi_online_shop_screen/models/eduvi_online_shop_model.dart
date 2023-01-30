import 'package:get/get.dart';
import 'menuslider1_item_model.dart';
import 'listdownload_item_model.dart';
import 'package:ajitkumar_s_application5/data/models/selectionPopupModel/selection_popup_model.dart';
import 'listthethreemusketeers_item_model.dart';

class EduviOnlineShopModel {
  RxList<Menuslider1ItemModel> menuslider1ItemList =
      RxList.filled(3, Menuslider1ItemModel());

  RxList<ListdownloadItemModel> listdownloadItemList =
      RxList.filled(8, ListdownloadItemModel());

  RxList<SelectionPopupModel> dropdownItemList = [
    SelectionPopupModel(
      id: 1,
      title: "test",
      isSelected: true,
    ),
    SelectionPopupModel(
      id: 2,
      title: "test1",
    ),
    SelectionPopupModel(
      id: 3,
      title: "test2",
    )
  ].obs;

  RxList<ListthethreemusketeersItemModel> listthethreemusketeersItemList =
      RxList.filled(3, ListthethreemusketeersItemModel());
}
