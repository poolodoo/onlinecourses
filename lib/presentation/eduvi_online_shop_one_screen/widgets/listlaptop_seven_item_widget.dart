import '../controller/eduvi_online_shop_one_controller.dart';
import '../models/listlaptop_seven_item_model.dart';
import 'package:ajitkumar_s_application5/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ListlaptopSevenItemWidget extends StatelessWidget {
  ListlaptopSevenItemWidget(this.listlaptopSevenItemModelObj);

  ListlaptopSevenItemModel listlaptopSevenItemModelObj;

  var controller = Get.find<EduviOnlineShopOneController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        top: 14,
        bottom: 14,
      ),
      decoration: AppDecoration.fillWhiteA700.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder5,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImage240x230,
            height: getVerticalSize(
              87.00,
            ),
            width: getHorizontalSize(
              76.00,
            ),
            radius: BorderRadius.circular(
              getHorizontalSize(
                5.00,
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomImageView(
                svgPath: ImageConstant.imgLaptop,
                height: getVerticalSize(
                  14.00,
                ),
                width: getHorizontalSize(
                  83.00,
                ),
              ),
              Container(
                width: getHorizontalSize(
                  202.00,
                ),
                margin: getMargin(
                  top: 12,
                ),
                child: Text(
                  "msg_the_three_muske2".tr,
                  maxLines: null,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtInterSemiBold16.copyWith(
                    height: getVerticalSize(
                      1.03,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 9,
                ),
                child: Text(
                  "lbl_39_00".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtInterSemiBold16Red300.copyWith(
                    height: getVerticalSize(
                      1.03,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
