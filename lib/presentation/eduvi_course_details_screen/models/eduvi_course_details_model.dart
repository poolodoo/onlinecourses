import 'package:get/get.dart';
import 'listmathsintroduction_item_model.dart';
import 'listlock_item_model.dart';
import 'listthethreemusketeers1_item_model.dart';

class EduviCourseDetailsModel {
  RxList<ListmathsintroductionItemModel> listmathsintroductionItemList =
      RxList.filled(2, ListmathsintroductionItemModel());

  RxList<ListlockItemModel> listlockItemList =
      RxList.filled(3, ListlockItemModel());

  RxList<Listthethreemusketeers1ItemModel> listthethreemusketeers1ItemList =
      RxList.filled(3, Listthethreemusketeers1ItemModel());
}
