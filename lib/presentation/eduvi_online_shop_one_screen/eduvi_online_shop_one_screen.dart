import '../eduvi_online_shop_one_screen/widgets/listlaptop_four_item_widget.dart';
import '../eduvi_online_shop_one_screen/widgets/listlaptop_seven_item_widget.dart';
import '../eduvi_online_shop_one_screen/widgets/menuslider_item_widget.dart';
import 'controller/eduvi_online_shop_one_controller.dart';
import 'models/listlaptop_four_item_model.dart';
import 'models/listlaptop_seven_item_model.dart';
import 'models/menuslider_item_model.dart';
import 'package:ajitkumar_s_application5/core/app_export.dart';
import 'package:ajitkumar_s_application5/widgets/app_bar/appbar_image.dart';
import 'package:ajitkumar_s_application5/widgets/app_bar/appbar_subtitle.dart';
import 'package:ajitkumar_s_application5/widgets/app_bar/appbar_title.dart';
import 'package:ajitkumar_s_application5/widgets/app_bar/custom_app_bar.dart';
import 'package:ajitkumar_s_application5/widgets/custom_button.dart';
import 'package:ajitkumar_s_application5/widgets/custom_drop_down.dart';
import 'package:ajitkumar_s_application5/widgets/custom_icon_button.dart';
import 'package:ajitkumar_s_application5/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class EduviOnlineShopOneScreen extends GetWidget<EduviOnlineShopOneController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstant.gray100,
            appBar: CustomAppBar(
                height: getVerticalSize(56.00),
                leadingWidth: 40,
                leading: AppbarImage(
                    height: getSize(20.00),
                    width: getSize(20.00),
                    svgPath: ImageConstant.imgLocation,
                    margin: getMargin(left: 20, top: 15, bottom: 15)),
                centerTitle: true,
                title: Row(children: [
                  AppbarTitle(
                      text: "lbl_educatsy".tr,
                      margin: getMargin(left: 8, top: 14, bottom: 10)),
                  AppbarSubtitle(
                      text: "lbl_menu".tr,
                      margin: getMargin(left: 134, top: 16, bottom: 13))
                ]),
                actions: [
                  AppbarImage(
                      height: getSize(30.00),
                      width: getSize(30.00),
                      svgPath: ImageConstant.imgMenu,
                      margin:
                          getMargin(left: 10, top: 10, right: 20, bottom: 10))
                ],
                styleType: Style.bgFillGray100),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Container(
                        width: size.width,
                        margin: getMargin(top: 30),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                  width: getHorizontalSize(335.00),
                                  margin: getMargin(left: 20, right: 20),
                                  padding: getPadding(
                                      left: 15, top: 9, right: 15, bottom: 9),
                                  decoration: AppDecoration.fillRed5001
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder10),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Padding(
                                            padding: getPadding(top: 10),
                                            child: RichText(
                                                text: TextSpan(children: [
                                                  TextSpan(
                                                      text: "lbl_home".tr,
                                                      style: TextStyle(
                                                          color: ColorConstant
                                                              .black900,
                                                          fontSize:
                                                              getFontSize(16),
                                                          fontFamily: 'Inter',
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          letterSpacing:
                                                              getHorizontalSize(
                                                                  0.48),
                                                          height:
                                                              getVerticalSize(
                                                                  1.00))),
                                                  TextSpan(
                                                      text: "lbl_shop".tr,
                                                      style: TextStyle(
                                                          color: ColorConstant
                                                              .red300,
                                                          fontSize:
                                                              getFontSize(16),
                                                          fontFamily: 'Inter',
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          letterSpacing:
                                                              getHorizontalSize(
                                                                  0.48),
                                                          height:
                                                              getVerticalSize(
                                                                  1.00)))
                                                ]),
                                                textAlign: TextAlign.left)),
                                        Container(
                                            width: getHorizontalSize(182.00),
                                            margin: getMargin(top: 23),
                                            child: Text(
                                                "msg_eduvi_online_bo".tr,
                                                maxLines: null,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtInterSemiBold30
                                                    .copyWith(
                                                        height: getVerticalSize(
                                                            1.05)))),
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgKisspngbookcas,
                                            height: getVerticalSize(142.00),
                                            width: getHorizontalSize(250.00),
                                            alignment: Alignment.center,
                                            margin: getMargin(top: 13))
                                      ])),
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: Container(
                                      height: getVerticalSize(110.00),
                                      child: Obx(() => ListView.separated(
                                          padding:
                                              getPadding(left: 20, top: 70),
                                          scrollDirection: Axis.horizontal,
                                          physics: BouncingScrollPhysics(),
                                          separatorBuilder: (context, index) {
                                            return SizedBox(
                                                height: getVerticalSize(20.00));
                                          },
                                          itemCount: controller
                                              .eduviOnlineShopOneModelObj
                                              .value
                                              .menusliderItemList
                                              .length,
                                          itemBuilder: (context, index) {
                                            MenusliderItemModel model =
                                                controller
                                                    .eduviOnlineShopOneModelObj
                                                    .value
                                                    .menusliderItemList[index];
                                            return MenusliderItemWidget(model);
                                          })))),
                              CustomTextFormField(
                                  width: 335,
                                  focusNode: FocusNode(),
                                  controller: controller.classController,
                                  hintText: "msg_serach_class_c".tr,
                                  margin: getMargin(top: 20),
                                  variant: TextFormFieldVariant.FillWhiteA700,
                                  padding: TextFormFieldPadding.PaddingT12,
                                  fontStyle:
                                      TextFormFieldFontStyle.InterMedium16,
                                  suffix: Container(
                                      padding: getPadding(
                                          left: 10,
                                          top: 10,
                                          right: 9,
                                          bottom: 9),
                                      margin: getMargin(
                                          left: 30,
                                          top: 5,
                                          right: 5,
                                          bottom: 5),
                                      decoration: BoxDecoration(
                                          color: ColorConstant.red300,
                                          borderRadius: BorderRadius.circular(
                                              getHorizontalSize(5.00))),
                                      child: CustomImageView(
                                          svgPath: ImageConstant.imgSearch)),
                                  suffixConstraints: BoxConstraints(
                                      maxHeight: getVerticalSize(50.00))),
                              CustomDropDown(
                                  width: 335,
                                  focusNode: FocusNode(),
                                  icon: Container(
                                      margin: getMargin(left: 30, right: 15),
                                      child: CustomImageView(
                                          svgPath: ImageConstant
                                              .imgArrowdownRed300)),
                                  hintText: "lbl_sort_by_latest".tr,
                                  margin: getMargin(top: 20),
                                  padding: DropDownPadding.PaddingT12,
                                  fontStyle: DropDownFontStyle.InterMedium16,
                                  items: controller.eduviOnlineShopOneModelObj
                                      .value.dropdownItemList,
                                  onChanged: (value) {
                                    controller.onSelected(value);
                                  }),
                              Card(
                                  clipBehavior: Clip.antiAlias,
                                  elevation: 0,
                                  margin: getMargin(top: 30),
                                  color: ColorConstant.whiteA700,
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder10),
                                  child: Container(
                                      height: getVerticalSize(280.00),
                                      width: getHorizontalSize(270.00),
                                      padding: getPadding(all: 20),
                                      decoration: AppDecoration.fillWhiteA700
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder10),
                                      child: Stack(children: [
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgImage240x230,
                                            height: getVerticalSize(240.00),
                                            width: getHorizontalSize(230.00),
                                            radius: BorderRadius.circular(
                                                getHorizontalSize(10.00)),
                                            alignment: Alignment.center)
                                      ]))),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: getPadding(left: 54, top: 14),
                                      child: Text("msg_the_three_muske".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtInterSemiBold18
                                              .copyWith(
                                                  height:
                                                      getVerticalSize(0.92))))),
                              Padding(
                                  padding:
                                      getPadding(left: 54, top: 7, right: 51),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text("lbl_40_00".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtInterSemiBold18Red300
                                                .copyWith(
                                                    height:
                                                        getVerticalSize(0.92))),
                                        CustomImageView(
                                            svgPath: ImageConstant.imgLaptop,
                                            height: getVerticalSize(16.00),
                                            width: getHorizontalSize(92.00),
                                            margin:
                                                getMargin(top: 2, bottom: 3))
                                      ])),
                              Card(
                                  clipBehavior: Clip.antiAlias,
                                  elevation: 0,
                                  margin: getMargin(top: 18),
                                  color: ColorConstant.whiteA700,
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder10),
                                  child: Container(
                                      height: getVerticalSize(280.00),
                                      width: getHorizontalSize(270.00),
                                      padding: getPadding(all: 20),
                                      decoration: AppDecoration.fillWhiteA700
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder10),
                                      child: Stack(children: [
                                        CustomImageView(
                                            imagePath: ImageConstant.imgImage1,
                                            height: getVerticalSize(240.00),
                                            width: getHorizontalSize(230.00),
                                            radius: BorderRadius.circular(
                                                getHorizontalSize(10.00)),
                                            alignment: Alignment.center)
                                      ]))),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: getPadding(left: 54, top: 14),
                                      child: Text("msg_the_three_muske".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtInterSemiBold18
                                              .copyWith(
                                                  height:
                                                      getVerticalSize(0.92))))),
                              Padding(
                                  padding:
                                      getPadding(left: 54, top: 7, right: 51),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text("lbl_40_00".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtInterSemiBold18Red300
                                                .copyWith(
                                                    height:
                                                        getVerticalSize(0.92))),
                                        CustomImageView(
                                            svgPath: ImageConstant.imgLaptop,
                                            height: getVerticalSize(16.00),
                                            width: getHorizontalSize(92.00),
                                            margin:
                                                getMargin(top: 2, bottom: 3))
                                      ])),
                              Card(
                                  clipBehavior: Clip.antiAlias,
                                  elevation: 0,
                                  margin: getMargin(top: 18),
                                  color: ColorConstant.whiteA700,
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder10),
                                  child: Container(
                                      height: getVerticalSize(280.00),
                                      width: getHorizontalSize(270.00),
                                      padding: getPadding(all: 20),
                                      decoration: AppDecoration.fillWhiteA700
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder10),
                                      child: Stack(children: [
                                        CustomImageView(
                                            imagePath: ImageConstant.imgImage2,
                                            height: getVerticalSize(240.00),
                                            width: getHorizontalSize(230.00),
                                            radius: BorderRadius.circular(
                                                getHorizontalSize(10.00)),
                                            alignment: Alignment.center)
                                      ]))),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: getPadding(left: 54, top: 14),
                                      child: Text("msg_the_three_muske".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtInterSemiBold18
                                              .copyWith(
                                                  height:
                                                      getVerticalSize(0.92))))),
                              Padding(
                                  padding:
                                      getPadding(left: 54, top: 7, right: 51),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text("lbl_40_00".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtInterSemiBold18Red300
                                                .copyWith(
                                                    height:
                                                        getVerticalSize(0.92))),
                                        CustomImageView(
                                            svgPath: ImageConstant.imgLaptop,
                                            height: getVerticalSize(16.00),
                                            width: getHorizontalSize(92.00),
                                            margin:
                                                getMargin(top: 2, bottom: 3))
                                      ])),
                              Card(
                                  clipBehavior: Clip.antiAlias,
                                  elevation: 0,
                                  margin: getMargin(top: 18),
                                  color: ColorConstant.whiteA700,
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder10),
                                  child: Container(
                                      height: getVerticalSize(280.00),
                                      width: getHorizontalSize(270.00),
                                      padding: getPadding(all: 20),
                                      decoration: AppDecoration.fillWhiteA700
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder10),
                                      child: Stack(children: [
                                        CustomImageView(
                                            imagePath: ImageConstant.imgImage3,
                                            height: getVerticalSize(240.00),
                                            width: getHorizontalSize(230.00),
                                            radius: BorderRadius.circular(
                                                getHorizontalSize(10.00)),
                                            alignment: Alignment.center)
                                      ]))),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: getPadding(left: 54, top: 14),
                                      child: Text("msg_the_three_muske".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtInterSemiBold18
                                              .copyWith(
                                                  height:
                                                      getVerticalSize(0.92))))),
                              Padding(
                                  padding:
                                      getPadding(left: 54, top: 7, right: 51),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text("lbl_40_00".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtInterSemiBold18Red300
                                                .copyWith(
                                                    height:
                                                        getVerticalSize(0.92))),
                                        CustomImageView(
                                            svgPath: ImageConstant.imgLaptop,
                                            height: getVerticalSize(16.00),
                                            width: getHorizontalSize(92.00),
                                            margin:
                                                getMargin(top: 2, bottom: 3))
                                      ])),
                              Padding(
                                  padding: getPadding(top: 33),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        CustomIconButton(
                                            height: 44,
                                            width: 44,
                                            variant:
                                                IconButtonVariant.FillWhiteA700,
                                            child: CustomImageView(
                                                svgPath: ImageConstant
                                                    .imgArrowright)),
                                        Padding(
                                            padding: getPadding(
                                                left: 20, top: 14, bottom: 9),
                                            child: Text("lbl_page".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtInterMedium16Black900
                                                    .copyWith(
                                                        height: getVerticalSize(
                                                            1.00)))),
                                        CustomButton(
                                            height: 44,
                                            width: 44,
                                            text: "lbl_5".tr,
                                            margin: getMargin(left: 16),
                                            variant:
                                                ButtonVariant.FillWhiteA700,
                                            shape: ButtonShape.RoundedBorder8,
                                            padding: ButtonPadding.PaddingAll8,
                                            fontStyle:
                                                ButtonFontStyle.InterMedium18),
                                        Padding(
                                            padding: getPadding(
                                                left: 15, top: 13, bottom: 10),
                                            child: Text("lbl_of_80".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtInterMedium16Black900
                                                    .copyWith(
                                                        height: getVerticalSize(
                                                            1.00)))),
                                        CustomIconButton(
                                            height: 44,
                                            width: 44,
                                            margin: getMargin(left: 21),
                                            child: CustomImageView(
                                                svgPath: ImageConstant
                                                    .imgArrowrightWhiteA700))
                                      ])),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: getPadding(left: 20, top: 71),
                                      child: Text("lbl_popular_books".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtInterSemiBold24
                                              .copyWith(
                                                  height:
                                                      getVerticalSize(1.00))))),
                              Padding(
                                  padding:
                                      getPadding(left: 20, top: 7, right: 20),
                                  child: Obx(() => ListView.separated(
                                      physics: NeverScrollableScrollPhysics(),
                                      shrinkWrap: true,
                                      separatorBuilder: (context, index) {
                                        return SizedBox(
                                            height: getVerticalSize(10.00));
                                      },
                                      itemCount: controller
                                          .eduviOnlineShopOneModelObj
                                          .value
                                          .listlaptopFourItemList
                                          .length,
                                      itemBuilder: (context, index) {
                                        ListlaptopFourItemModel model =
                                            controller
                                                .eduviOnlineShopOneModelObj
                                                .value
                                                .listlaptopFourItemList[index];
                                        return ListlaptopFourItemWidget(model);
                                      }))),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: getPadding(left: 20, top: 20),
                                      child: Text("lbl_see_more".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtInterMedium16Red300
                                              .copyWith(
                                                  height:
                                                      getVerticalSize(1.03))))),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: getPadding(left: 20, top: 68),
                                      child: Text("lbl_new_arrivals".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtInterSemiBold24
                                              .copyWith(
                                                  height:
                                                      getVerticalSize(1.00))))),
                              Padding(
                                  padding:
                                      getPadding(left: 20, top: 10, right: 20),
                                  child: Obx(() => ListView.separated(
                                      physics: NeverScrollableScrollPhysics(),
                                      shrinkWrap: true,
                                      separatorBuilder: (context, index) {
                                        return SizedBox(
                                            height: getVerticalSize(10.00));
                                      },
                                      itemCount: controller
                                          .eduviOnlineShopOneModelObj
                                          .value
                                          .listlaptopSevenItemList
                                          .length,
                                      itemBuilder: (context, index) {
                                        ListlaptopSevenItemModel model =
                                            controller
                                                .eduviOnlineShopOneModelObj
                                                .value
                                                .listlaptopSevenItemList[index];
                                        return ListlaptopSevenItemWidget(model);
                                      }))),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: getPadding(left: 20, top: 20),
                                      child: Text("lbl_see_more".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtInterMedium16Red300
                                              .copyWith(
                                                  height:
                                                      getVerticalSize(1.03))))),
                              Container(
                                  width: getHorizontalSize(335.00),
                                  margin:
                                      getMargin(left: 20, top: 69, right: 20),
                                  padding: getPadding(
                                      left: 28, top: 35, right: 28, bottom: 35),
                                  decoration: AppDecoration.fillBlack90001
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder10),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Container(
                                            width: getHorizontalSize(253.00),
                                            margin: getMargin(top: 6),
                                            child: Text(
                                                "msg_subscribe_for_g".tr,
                                                maxLines: null,
                                                textAlign: TextAlign.center,
                                                style: AppStyle
                                                    .txtInterBold28WhiteA700
                                                    .copyWith(
                                                        height: getVerticalSize(
                                                            1.12)))),
                                        Container(
                                            width: getHorizontalSize(277.00),
                                            margin: getMargin(top: 22),
                                            child: Text("msg_20k_students_d".tr,
                                                maxLines: null,
                                                textAlign: TextAlign.center,
                                                style: AppStyle
                                                    .txtInterRegular16WhiteA700b2
                                                    .copyWith(
                                                        height: getVerticalSize(
                                                            1.24)))),
                                        Container(
                                            width: getHorizontalSize(275.00),
                                            margin: getMargin(
                                                left: 1, top: 35, right: 1),
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder5),
                                            child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  CustomTextFormField(
                                                      width: 275,
                                                      focusNode: FocusNode(),
                                                      controller: controller
                                                          .buttonController,
                                                      hintText:
                                                          "msg_enter_your_emai"
                                                              .tr,
                                                      textInputAction:
                                                          TextInputAction.done,
                                                      textInputType:
                                                          TextInputType
                                                              .emailAddress),
                                                  CustomButton(
                                                      height: 50,
                                                      width: 275,
                                                      text: "lbl_subscribe".tr,
                                                      margin:
                                                          getMargin(top: 20),
                                                      padding: ButtonPadding
                                                          .PaddingAll14,
                                                      fontStyle: ButtonFontStyle
                                                          .InterMedium14WhiteA700)
                                                ]))
                                      ])),
                              Container(
                                  width: size.width,
                                  padding: getPadding(
                                      left: 20, top: 47, right: 20, bottom: 47),
                                  decoration: AppDecoration.fillGray100,
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                            padding: getPadding(top: 5),
                                            child: Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgLocation,
                                                      height: getSize(30.00),
                                                      width: getSize(30.00),
                                                      margin:
                                                          getMargin(bottom: 6)),
                                                  Padding(
                                                      padding:
                                                          getPadding(left: 12),
                                                      child: Text(
                                                          "lbl_educatsy".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtInterSemiBold30
                                                              .copyWith(
                                                                  height:
                                                                      getVerticalSize(
                                                                          1.00))))
                                                ])),
                                        Padding(
                                            padding: getPadding(top: 15),
                                            child: Row(children: [
                                              CustomImageView(
                                                  svgPath:
                                                      ImageConstant.imgFacebook,
                                                  height: getSize(22.00),
                                                  width: getSize(22.00),
                                                  margin: getMargin(
                                                      top: 7, bottom: 7),
                                                  onTap: () {
                                                    onTapImgFacebook();
                                                  }),
                                              Card(
                                                  clipBehavior: Clip.antiAlias,
                                                  elevation: 0,
                                                  margin: getMargin(left: 15),
                                                  color: ColorConstant
                                                      .deepOrange400,
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .circleBorder18),
                                                  child: Container(
                                                      height: getSize(36.00),
                                                      width: getSize(36.00),
                                                      padding:
                                                          getPadding(all: 9),
                                                      decoration: AppDecoration
                                                          .fillDeeporange400
                                                          .copyWith(
                                                              borderRadius:
                                                                  BorderRadiusStyle
                                                                      .circleBorder18),
                                                      child: Stack(children: [
                                                        CustomImageView(
                                                            svgPath:
                                                                ImageConstant
                                                                    .imgCamera,
                                                            height:
                                                                getSize(18.00),
                                                            width:
                                                                getSize(18.00),
                                                            alignment: Alignment
                                                                .center,
                                                            onTap: () {
                                                              onTapImgCamera();
                                                            })
                                                      ]))),
                                              CustomImageView(
                                                  svgPath:
                                                      ImageConstant.imgTwitter,
                                                  height:
                                                      getVerticalSize(17.00),
                                                  width:
                                                      getHorizontalSize(22.00),
                                                  margin: getMargin(
                                                      left: 15,
                                                      top: 9,
                                                      bottom: 9),
                                                  onTap: () {
                                                    onTapImgTwitter();
                                                  }),
                                              CustomImageView(
                                                  svgPath:
                                                      ImageConstant.imgLinkedin,
                                                  height:
                                                      getVerticalSize(18.00),
                                                  width:
                                                      getHorizontalSize(22.00),
                                                  margin: getMargin(
                                                      left: 15,
                                                      top: 9,
                                                      bottom: 8))
                                            ])),
                                        Padding(
                                            padding: getPadding(top: 39),
                                            child: RichText(
                                                text: TextSpan(children: [
                                                  TextSpan(
                                                      text: "lbl".tr,
                                                      style: TextStyle(
                                                          color: ColorConstant
                                                              .gray700,
                                                          fontSize:
                                                              getFontSize(16),
                                                          fontFamily: 'Inter',
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          height:
                                                              getVerticalSize(
                                                                  1.00))),
                                                  TextSpan(
                                                      text: "lbl_2021_eduvi_co2"
                                                          .tr,
                                                      style: TextStyle(
                                                          color: ColorConstant
                                                              .gray700,
                                                          fontSize:
                                                              getFontSize(16),
                                                          fontFamily: 'Inter',
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          height:
                                                              getVerticalSize(
                                                                  1.00)))
                                                ]),
                                                textAlign: TextAlign.left)),
                                        Container(
                                            width: getHorizontalSize(167.00),
                                            margin: getMargin(top: 21),
                                            child: Text(
                                                "msg_eduvi_is_a_regi".tr,
                                                maxLines: null,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtInterRegular16
                                                    .copyWith(
                                                        height: getVerticalSize(
                                                            1.34)))),
                                        Padding(
                                            padding: getPadding(top: 38),
                                            child: Text("lbl_community".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtInterSemiBold22
                                                    .copyWith(
                                                        height: getVerticalSize(
                                                            1.00)))),
                                        Padding(
                                            padding: getPadding(top: 16),
                                            child: Text("lbl_learners".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtInterRegular16
                                                    .copyWith(
                                                        height: getVerticalSize(
                                                            1.00)))),
                                        Padding(
                                            padding: getPadding(top: 16),
                                            child: Text("lbl_parteners".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtInterRegular16
                                                    .copyWith(
                                                        height: getVerticalSize(
                                                            1.00)))),
                                        Padding(
                                            padding: getPadding(top: 17),
                                            child: Text("lbl_developers".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtInterRegular16
                                                    .copyWith(
                                                        height: getVerticalSize(
                                                            1.00)))),
                                        Padding(
                                            padding: getPadding(top: 14),
                                            child: Text("lbl_transactions".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtInterRegular16
                                                    .copyWith(
                                                        height: getVerticalSize(
                                                            1.00)))),
                                        Padding(
                                            padding: getPadding(top: 17),
                                            child: Text("lbl_blog".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtInterRegular16
                                                    .copyWith(
                                                        height: getVerticalSize(
                                                            1.00)))),
                                        Padding(
                                            padding: getPadding(top: 15),
                                            child: Text(
                                                "lbl_teaching_center".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtInterRegular16
                                                    .copyWith(
                                                        height: getVerticalSize(
                                                            1.00)))),
                                        Padding(
                                            padding: getPadding(top: 25),
                                            child: Text("lbl_courses".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtInterSemiBold22
                                                    .copyWith(
                                                        height: getVerticalSize(
                                                            1.00)))),
                                        Padding(
                                            padding: getPadding(top: 18),
                                            child: Text(
                                                "msg_classroom_cours".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtInterRegular16
                                                    .copyWith(
                                                        height: getVerticalSize(
                                                            1.00)))),
                                        Padding(
                                            padding: getPadding(top: 15),
                                            child: Text(
                                                "msg_virtual_classro".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtInterRegular16
                                                    .copyWith(
                                                        height: getVerticalSize(
                                                            1.00)))),
                                        Padding(
                                            padding: getPadding(top: 17),
                                            child: Text(
                                                "msg_e_learning_cour".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtInterRegular16
                                                    .copyWith(
                                                        height: getVerticalSize(
                                                            1.00)))),
                                        Padding(
                                            padding: getPadding(top: 14),
                                            child: Text("lbl_video_courses".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtInterRegular16
                                                    .copyWith(
                                                        height: getVerticalSize(
                                                            1.00)))),
                                        Padding(
                                            padding: getPadding(top: 15),
                                            child: Text(
                                                "lbl_offline_courses".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtInterRegular16
                                                    .copyWith(
                                                        height: getVerticalSize(
                                                            1.00)))),
                                        Padding(
                                            padding: getPadding(top: 27),
                                            child: Text("lbl_quick_links".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtInterSemiBold22
                                                    .copyWith(
                                                        height: getVerticalSize(
                                                            1.00)))),
                                        Padding(
                                            padding: getPadding(top: 18),
                                            child: Text("lbl_home2".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtInterRegular16
                                                    .copyWith(
                                                        height: getVerticalSize(
                                                            1.00)))),
                                        Padding(
                                            padding: getPadding(top: 15),
                                            child: Text(
                                                "msg_professional_ed".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtInterRegular16
                                                    .copyWith(
                                                        height: getVerticalSize(
                                                            1.00)))),
                                        Padding(
                                            padding: getPadding(top: 16),
                                            child: Text("lbl_courses".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtInterRegular16
                                                    .copyWith(
                                                        height: getVerticalSize(
                                                            1.00)))),
                                        Padding(
                                            padding: getPadding(top: 15),
                                            child: Text("lbl_admissions".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtInterRegular16
                                                    .copyWith(
                                                        height: getVerticalSize(
                                                            1.00)))),
                                        Padding(
                                            padding: getPadding(top: 16),
                                            child: Text("lbl_testimonial".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtInterRegular16
                                                    .copyWith(
                                                        height: getVerticalSize(
                                                            1.00)))),
                                        Padding(
                                            padding: getPadding(top: 17),
                                            child: Text("lbl_programs".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtInterRegular16
                                                    .copyWith(
                                                        height: getVerticalSize(
                                                            1.00)))),
                                        Padding(
                                            padding: getPadding(top: 25),
                                            child: Text("lbl_more".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtInterSemiBold22
                                                    .copyWith(
                                                        height: getVerticalSize(
                                                            1.00)))),
                                        Padding(
                                            padding: getPadding(top: 18),
                                            child: Text("lbl_press".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtInterRegular16
                                                    .copyWith(
                                                        height: getVerticalSize(
                                                            1.00)))),
                                        Padding(
                                            padding: getPadding(top: 16),
                                            child: Text("lbl_investors".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtInterRegular16
                                                    .copyWith(
                                                        height: getVerticalSize(
                                                            1.00)))),
                                        Padding(
                                            padding: getPadding(top: 16),
                                            child: Text("lbl_terms".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtInterRegular16
                                                    .copyWith(
                                                        height: getVerticalSize(
                                                            1.00)))),
                                        Padding(
                                            padding: getPadding(top: 17),
                                            child: Text("lbl_privacy".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtInterRegular16
                                                    .copyWith(
                                                        height: getVerticalSize(
                                                            1.00)))),
                                        Padding(
                                            padding: getPadding(top: 16),
                                            child: Text("lbl_help".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtInterRegular16
                                                    .copyWith(
                                                        height: getVerticalSize(
                                                            1.00)))),
                                        Padding(
                                            padding: getPadding(top: 14),
                                            child: Text("lbl_contact".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtInterRegular16
                                                    .copyWith(
                                                        height: getVerticalSize(
                                                            1.00))))
                                      ]))
                            ]))))));
  }

  onTapImgFacebook() async {
    var url = 'https://www.facebook.com/login/';
    if (!await launch(url)) {
      throw 'Could not launch https://www.facebook.com/login/';
    }
  }

  onTapImgCamera() async {
    await PermissionManager.askForPermission(Permission.camera);
    await PermissionManager.askForPermission(Permission.storage);
    List<String?>? imageList = [];
    await FileManager().showModelSheetForImage(getImages: (value) async {
      imageList = value;
    });
  }

  onTapImgTwitter() async {
    var url = 'https://twitter.com/login/';
    if (!await launch(url)) {
      throw 'Could not launch https://twitter.com/login/';
    }
  }
}
