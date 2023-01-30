import '../controller/eduvi_online_shop_controller.dart';
import '../models/listdownload_item_model.dart';
import 'package:ajitkumar_s_application5/core/app_export.dart';
import 'package:ajitkumar_s_application5/widgets/custom_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ListdownloadItemWidget extends StatelessWidget {
  ListdownloadItemWidget(this.listdownloadItemModelObj);

  ListdownloadItemModel listdownloadItemModelObj;

  var controller = Get.find<EduviOnlineShopController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        left: 16,
        top: 30,
        right: 16,
        bottom: 30,
      ),
      decoration: AppDecoration.fillWhiteA700.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder15,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CustomImageView(
            svgPath: ImageConstant.imgDownload,
            height: getSize(
              50.00,
            ),
            width: getSize(
              50.00,
            ),
          ),
          Padding(
            padding: getPadding(
              top: 19,
            ),
            child: Text(
              "lbl_standard_one".tr,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtInterSemiBold25Gray900.copyWith(
                height: getVerticalSize(
                  1.00,
                ),
              ),
            ),
          ),
          Container(
            width: getHorizontalSize(
              257.00,
            ),
            margin: getMargin(
              top: 18,
            ),
            child: Text(
              "msg_standard_1_is_a".tr,
              maxLines: null,
              textAlign: TextAlign.center,
              style: AppStyle.txtInterRegular16.copyWith(
                height: getVerticalSize(
                  1.55,
                ),
              ),
            ),
          ),
          CustomButton(
            height: 44,
            width: 162,
            text: "lbl_class_details".tr,
            margin: getMargin(
              top: 30,
            ),
            variant: ButtonVariant.OutlineRed300,
          ),
        ],
      ),
    );
  }
}
