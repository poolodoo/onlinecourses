import 'package:ajitkumar_s_application5/core/app_export.dart';
import 'package:ajitkumar_s_application5/presentation/eduvi_online_shop_screen/models/eduvi_online_shop_model.dart';
import 'package:flutter/material.dart';

class EduviOnlineShopController extends GetxController {
  TextEditingController classController = TextEditingController();

  TextEditingController buttonController = TextEditingController();

  Rx<EduviOnlineShopModel> eduviOnlineShopModelObj = EduviOnlineShopModel().obs;

  SelectionPopupModel? selectedDropDownValue;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    classController.dispose();
    buttonController.dispose();
  }

  onSelected(dynamic value) {
    selectedDropDownValue = value as SelectionPopupModel;
    eduviOnlineShopModelObj.value.dropdownItemList.forEach((element) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    });
    eduviOnlineShopModelObj.value.dropdownItemList.refresh();
  }
}
