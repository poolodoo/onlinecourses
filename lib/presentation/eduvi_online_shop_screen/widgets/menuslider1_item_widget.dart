import '../controller/eduvi_online_shop_controller.dart';
import '../models/menuslider1_item_model.dart';
import 'package:ajitkumar_s_application5/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Menuslider1ItemWidget extends StatelessWidget {
  Menuslider1ItemWidget(this.menuslider1ItemModelObj);

  Menuslider1ItemModel menuslider1ItemModelObj;

  var controller = Get.find<EduviOnlineShopController>();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          width: getHorizontalSize(
            114.00,
          ),
          margin: getMargin(
            right: 20,
          ),
          padding: getPadding(
            left: 20,
            top: 11,
            right: 20,
            bottom: 11,
          ),
          decoration: AppDecoration.txtFillWhiteA700.copyWith(
            borderRadius: BorderRadiusStyle.txtRoundedBorder5,
          ),
          child: Text(
            "lbl_all_courses".tr,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtInterMedium14Gray90001.copyWith(
              height: getVerticalSize(
                1.18,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
