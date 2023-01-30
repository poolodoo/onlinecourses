import '../home_screen/widgets/chipviewtwo_item_widget.dart';
import '../home_screen/widgets/home_item_widget.dart';
import 'controller/home_controller.dart';
import 'models/chipviewtwo_item_model.dart';
import 'models/home_item_model.dart';
import 'package:ajitkumar_s_application5/core/app_export.dart';
import 'package:ajitkumar_s_application5/widgets/app_bar/appbar_image.dart';
import 'package:ajitkumar_s_application5/widgets/app_bar/appbar_subtitle.dart';
import 'package:ajitkumar_s_application5/widgets/app_bar/appbar_title.dart';
import 'package:ajitkumar_s_application5/widgets/app_bar/custom_app_bar.dart';
import 'package:ajitkumar_s_application5/widgets/custom_button.dart';
import 'package:ajitkumar_s_application5/widgets/custom_drop_down.dart';
import 'package:ajitkumar_s_application5/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class HomeScreen extends GetWidget<HomeController> {
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
                              CustomButton(
                                  height: 44,
                                  width: 170,
                                  text: "msg_never_stop_lear".tr,
                                  margin: getMargin(left: 20),
                                  variant: ButtonVariant.FillWhiteA700,
                                  fontStyle: ButtonFontStyle.InterMedium14,
                                  alignment: Alignment.centerLeft),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Container(
                                      width: getHorizontalSize(297.00),
                                      margin: getMargin(left: 20, top: 22),
                                      child: Text("msg_grow_up_your_sk".tr,
                                          maxLines: null,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtInterBold32
                                              .copyWith(
                                                  height:
                                                      getVerticalSize(1.03))))),
                              Container(
                                  width: getHorizontalSize(331.00),
                                  margin: getMargin(top: 36),
                                  child: Text("msg_eduvi_is_a_glob".tr,
                                      maxLines: null,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtInterRegular16
                                          .copyWith(
                                              height: getVerticalSize(1.55)))),
                              CustomDropDown(
                                  width: 335,
                                  focusNode: FocusNode(),
                                  icon: Container(
                                      margin: getMargin(left: 30, right: 15),
                                      child: CustomImageView(
                                          svgPath: ImageConstant
                                              .imgArrowdownRed300)),
                                  hintText: "lbl_kindergarten".tr,
                                  margin: getMargin(top: 35),
                                  padding: DropDownPadding.PaddingT12,
                                  fontStyle: DropDownFontStyle.InterMedium16,
                                  items: controller
                                      .homeModelObj.value.dropdownItemList,
                                  onChanged: (value) {
                                    controller.onSelected(value);
                                  }),
                              CustomTextFormField(
                                  width: 335,
                                  focusNode: FocusNode(),
                                  controller: controller.classController,
                                  hintText: "lbl_class_course".tr,
                                  margin: getMargin(top: 12),
                                  variant: TextFormFieldVariant.FillWhiteA700,
                                  fontStyle:
                                      TextFormFieldFontStyle.InterMedium16),
                              CustomButton(
                                  height: 50,
                                  width: 335,
                                  text: "lbl_serach".tr,
                                  margin: getMargin(top: 12),
                                  fontStyle: ButtonFontStyle.InterMedium16),
                              Container(
                                  height: getVerticalSize(339.00),
                                  width: getHorizontalSize(323.00),
                                  margin: getMargin(top: 50),
                                  child: Stack(
                                      alignment: Alignment.centerRight,
                                      children: [
                                        CustomImageView(
                                            svgPath: ImageConstant.imgVector1,
                                            height: getVerticalSize(273.00),
                                            width: getHorizontalSize(287.00),
                                            alignment: Alignment.topCenter,
                                            margin: getMargin(top: 19)),
                                        Align(
                                            alignment: Alignment.centerRight,
                                            child: Card(
                                                clipBehavior: Clip.antiAlias,
                                                elevation: 0,
                                                margin: getMargin(right: 17),
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder30),
                                                child: Container(
                                                    height:
                                                        getVerticalSize(324.00),
                                                    width: getHorizontalSize(
                                                        251.00),
                                                    padding: getPadding(
                                                        left: 24, right: 24),
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .roundedBorder30,
                                                        image: DecorationImage(
                                                            image: AssetImage(
                                                                ImageConstant
                                                                    .imgGroup1854),
                                                            fit: BoxFit.cover)),
                                                    child: Stack(
                                                        alignment:
                                                            Alignment.center,
                                                        children: [
                                                          CustomImageView(
                                                              imagePath:
                                                                  ImageConstant
                                                                      .imgSchoolboyhold,
                                                              height:
                                                                  getVerticalSize(
                                                                      324.00),
                                                              width:
                                                                  getHorizontalSize(
                                                                      202.00),
                                                              alignment:
                                                                  Alignment
                                                                      .center),
                                                          Align(
                                                              alignment:
                                                                  Alignment
                                                                      .center,
                                                              child: Container(
                                                                  height:
                                                                      getVerticalSize(
                                                                          324.00),
                                                                  width:
                                                                      getHorizontalSize(
                                                                          202.00),
                                                                  child: Stack(
                                                                      alignment:
                                                                          Alignment
                                                                              .topRight,
                                                                      children: [
                                                                        CustomImageView(
                                                                            imagePath:
                                                                                ImageConstant.imgSchoolboyhold324x202,
                                                                            height: getVerticalSize(324.00),
                                                                            width: getHorizontalSize(202.00),
                                                                            alignment: Alignment.center),
                                                                        CustomImageView(
                                                                            svgPath:
                                                                                ImageConstant.imgTelevision,
                                                                            height: getSize(38.00),
                                                                            width: getSize(38.00),
                                                                            alignment: Alignment.topRight,
                                                                            margin: getMargin(top: 14, right: 1))
                                                                      ])))
                                                        ])))),
                                        CustomImageView(
                                            svgPath: ImageConstant.imgClose,
                                            height: getSize(38.00),
                                            width: getSize(38.00),
                                            alignment: Alignment.centerLeft,
                                            margin: getMargin(left: 35)),
                                        CustomImageView(
                                            svgPath: ImageConstant.img4,
                                            height: getSize(38.00),
                                            width: getSize(38.00),
                                            alignment: Alignment.topLeft),
                                        CustomImageView(
                                            svgPath: ImageConstant.imgComputer,
                                            height: getSize(38.00),
                                            width: getSize(38.00),
                                            alignment: Alignment.bottomRight,
                                            margin: getMargin(bottom: 31))
                                      ])),
                              Container(
                                  width: getHorizontalSize(268.00),
                                  margin: getMargin(top: 77),
                                  child: Text("msg_high_quality_vi".tr,
                                      maxLines: null,
                                      textAlign: TextAlign.center,
                                      style: AppStyle.txtInterBold28.copyWith(
                                          height: getVerticalSize(1.12)))),
                              Container(
                                  width: getHorizontalSize(308.00),
                                  margin: getMargin(top: 38),
                                  child: Text("msg_high_definition".tr,
                                      maxLines: null,
                                      textAlign: TextAlign.center,
                                      style: AppStyle.txtInterRegular16
                                          .copyWith(
                                              height: getVerticalSize(1.24)))),
                              CustomButton(
                                  height: 50,
                                  width: 162,
                                  text: "lbl_visit_courses".tr,
                                  margin: getMargin(top: 35),
                                  padding: ButtonPadding.PaddingAll14,
                                  fontStyle: ButtonFontStyle.InterMedium16),
                              Card(
                                  clipBehavior: Clip.antiAlias,
                                  elevation: 0,
                                  margin: getMargin(top: 24),
                                  color: ColorConstant.whiteA700,
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder10),
                                  child: Container(
                                      height: getVerticalSize(250.00),
                                      width: getHorizontalSize(335.00),
                                      padding: getPadding(all: 10),
                                      decoration: AppDecoration
                                          .outlineBlack9000c
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder10),
                                      child: Stack(
                                          alignment: Alignment.bottomCenter,
                                          children: [
                                            CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgPexelsvanessagarcia6325959,
                                                height: getVerticalSize(230.00),
                                                width:
                                                    getHorizontalSize(315.00),
                                                radius: BorderRadius.circular(
                                                    getHorizontalSize(10.00)),
                                                alignment: Alignment.center),
                                            Align(
                                                alignment:
                                                    Alignment.bottomCenter,
                                                child: Padding(
                                                    padding:
                                                        getPadding(bottom: 9),
                                                    child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .end,
                                                        children: [
                                                          Card(
                                                              clipBehavior: Clip
                                                                  .antiAlias,
                                                              elevation: 0,
                                                              margin: EdgeInsets
                                                                  .all(0),
                                                              color:
                                                                  ColorConstant
                                                                      .whiteA700,
                                                              shape: RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadiusStyle
                                                                          .roundedBorder10),
                                                              child: Container(
                                                                  height:
                                                                      getVerticalSize(
                                                                          62.00),
                                                                  width:
                                                                      getHorizontalSize(
                                                                          52.00),
                                                                  padding:
                                                                      getPadding(
                                                                          all:
                                                                              3),
                                                                  decoration: AppDecoration
                                                                      .outlineBlack90019
                                                                      .copyWith(
                                                                          borderRadius: BorderRadiusStyle
                                                                              .roundedBorder10),
                                                                  child: Stack(
                                                                      children: [
                                                                        CustomImageView(
                                                                            imagePath:
                                                                                ImageConstant.imgPortraitlittlegirlcoloring,
                                                                            height: getVerticalSize(56.00),
                                                                            width: getHorizontalSize(45.00),
                                                                            radius: BorderRadius.circular(getHorizontalSize(10.00)),
                                                                            alignment: Alignment.center)
                                                                      ]))),
                                                          Card(
                                                              clipBehavior: Clip
                                                                  .antiAlias,
                                                              elevation: 0,
                                                              margin: getMargin(
                                                                  left: 81,
                                                                  top: 32),
                                                              color: ColorConstant
                                                                  .deepOrange400,
                                                              shape: RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadiusStyle
                                                                          .circleBorder15),
                                                              child: Container(
                                                                  height:
                                                                      getSize(
                                                                          30.00),
                                                                  width: getSize(
                                                                      30.00),
                                                                  padding:
                                                                      getPadding(
                                                                          all:
                                                                              6),
                                                                  decoration: AppDecoration
                                                                      .fillDeeporange400
                                                                      .copyWith(
                                                                          borderRadius: BorderRadiusStyle
                                                                              .circleBorder15),
                                                                  child: Stack(
                                                                      children: [
                                                                        CustomImageView(
                                                                            svgPath:
                                                                                ImageConstant.imgAlarm,
                                                                            height: getSize(16.00),
                                                                            width: getSize(16.00),
                                                                            radius: BorderRadius.circular(getHorizontalSize(8.00)),
                                                                            alignment: Alignment.center)
                                                                      ]))),
                                                          Card(
                                                              clipBehavior: Clip
                                                                  .antiAlias,
                                                              elevation: 0,
                                                              margin: getMargin(
                                                                  left: 102,
                                                                  top: 32),
                                                              color:
                                                                  ColorConstant
                                                                      .red300,
                                                              shape: RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadiusStyle
                                                                          .circleBorder15),
                                                              child: Container(
                                                                  height:
                                                                      getSize(
                                                                          30.00),
                                                                  width: getSize(
                                                                      30.00),
                                                                  padding:
                                                                      getPadding(
                                                                          all:
                                                                              9),
                                                                  decoration: AppDecoration
                                                                      .fillRed300
                                                                      .copyWith(
                                                                          borderRadius: BorderRadiusStyle
                                                                              .circleBorder15),
                                                                  child: Stack(
                                                                      children: [
                                                                        CustomImageView(
                                                                            svgPath:
                                                                                ImageConstant.imgArrowup,
                                                                            height: getSize(12.00),
                                                                            width: getSize(12.00),
                                                                            radius: BorderRadius.circular(getHorizontalSize(6.00)),
                                                                            alignment: Alignment.center)
                                                                      ])))
                                                        ])))
                                          ]))),
                              Padding(
                                  padding: getPadding(top: 20),
                                  child: Wrap(
                                      children: List<Widget>.generate(
                                          controller
                                              .homeModelObj
                                              .value
                                              .chipviewtwoItemList
                                              .length, (index) {
                                    ChipviewtwoItemModel model = controller
                                        .homeModelObj
                                        .value
                                        .chipviewtwoItemList[index];
                                    return ChipviewtwoItemWidget(model);
                                  }))),
                              Container(
                                  width: getHorizontalSize(283.00),
                                  margin: getMargin(top: 77),
                                  child: Text("msg_qualified_lesso".tr,
                                      maxLines: null,
                                      textAlign: TextAlign.center,
                                      style: AppStyle.txtInterBold28.copyWith(
                                          height: getVerticalSize(1.12)))),
                              Container(
                                  width: getHorizontalSize(328.00),
                                  margin: getMargin(top: 38),
                                  child: Text("msg_a_lesson_or_cla".tr,
                                      maxLines: null,
                                      textAlign: TextAlign.center,
                                      style: AppStyle.txtInterRegular16
                                          .copyWith(
                                              height: getVerticalSize(1.24)))),
                              Padding(
                                  padding: getPadding(top: 26),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                            padding:
                                                getPadding(top: 17, bottom: 15),
                                            child: Text("lbl_kindergarten".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtInterMedium14Black900
                                                    .copyWith(
                                                        height: getVerticalSize(
                                                            1.18)))),
                                        CustomButton(
                                            height: 50,
                                            width: 131,
                                            text: "lbl_high_school2".tr,
                                            margin: getMargin(left: 23),
                                            variant:
                                                ButtonVariant.FillOrange200,
                                            padding: ButtonPadding.PaddingAll14,
                                            fontStyle: ButtonFontStyle
                                                .InterMedium14WhiteA700),
                                        Padding(
                                            padding: getPadding(
                                                left: 20, top: 17, bottom: 15),
                                            child: Text("lbl_college".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtInterMedium14Black900
                                                    .copyWith(
                                                        height: getVerticalSize(
                                                            1.18))))
                                      ])),
                              Padding(
                                  padding:
                                      getPadding(left: 45, top: 30, right: 40),
                                  child: Obx(() => ListView.separated(
                                      physics: NeverScrollableScrollPhysics(),
                                      shrinkWrap: true,
                                      separatorBuilder: (context, index) {
                                        return SizedBox(
                                            height: getVerticalSize(15.00));
                                      },
                                      itemCount: controller.homeModelObj.value
                                          .homeItemList.length,
                                      itemBuilder: (context, index) {
                                        HomeItemModel model = controller
                                            .homeModelObj
                                            .value
                                            .homeItemList[index];
                                        return HomeItemWidget(model);
                                      }))),
                              CustomButton(
                                  height: 50,
                                  width: 174,
                                  text: "msg_visit_more_clas".tr,
                                  margin: getMargin(top: 30),
                                  padding: ButtonPadding.PaddingAll14,
                                  fontStyle:
                                      ButtonFontStyle.InterMedium14WhiteA700),
                              Container(
                                  height: getVerticalSize(819.00),
                                  width: getHorizontalSize(333.00),
                                  margin: getMargin(top: 70),
                                  child: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        Align(
                                            alignment: Alignment.bottomCenter,
                                            child: Container(
                                                height: getVerticalSize(9.00),
                                                width:
                                                    getHorizontalSize(310.00),
                                                margin: getMargin(bottom: 84),
                                                decoration: BoxDecoration(
                                                    color:
                                                        ColorConstant.black900,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            getHorizontalSize(
                                                                155.00))))),
                                        Align(
                                            alignment: Alignment.center,
                                            child: Container(
                                                padding: getPadding(
                                                    left: 20,
                                                    top: 30,
                                                    right: 20,
                                                    bottom: 30),
                                                decoration: AppDecoration
                                                    .fillRed5001
                                                    .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .roundedBorder10),
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      CustomButton(
                                                          height: 44,
                                                          width: 121,
                                                          text:
                                                              "lbl_college_level"
                                                                  .tr,
                                                          variant: ButtonVariant
                                                              .FillBlack900,
                                                          fontStyle: ButtonFontStyle
                                                              .InterMedium14WhiteA700),
                                                      Container(
                                                          width:
                                                              getHorizontalSize(
                                                                  287.00),
                                                          margin: getMargin(
                                                              top: 22),
                                                          child: Text(
                                                              "msg_don_t_waste_tim"
                                                                  .tr,
                                                              maxLines: null,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtInterBold28
                                                                  .copyWith(
                                                                      height: getVerticalSize(
                                                                          1.12)))),
                                                      Container(
                                                          width:
                                                              getHorizontalSize(
                                                                  283.00),
                                                          margin: getMargin(
                                                              top: 35),
                                                          child: Text(
                                                              "msg_high_definition2"
                                                                  .tr,
                                                              maxLines: null,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtInterRegular16
                                                                  .copyWith(
                                                                      height: getVerticalSize(
                                                                          1.24)))),
                                                      CustomButton(
                                                          height: 50,
                                                          width: 150,
                                                          text:
                                                              "lbl_registation_now"
                                                                  .tr,
                                                          margin: getMargin(
                                                              top: 27),
                                                          padding: ButtonPadding
                                                              .PaddingAll14,
                                                          fontStyle: ButtonFontStyle
                                                              .InterMedium14WhiteA700),
                                                      Align(
                                                          alignment: Alignment
                                                              .centerRight,
                                                          child: Card(
                                                              clipBehavior: Clip
                                                                  .antiAlias,
                                                              elevation: 0,
                                                              margin: getMargin(
                                                                  top: 30,
                                                                  right: 14),
                                                              color:
                                                                  ColorConstant
                                                                      .whiteA700,
                                                              shape: RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadiusStyle
                                                                          .roundedBorder5),
                                                              child: Container(
                                                                  height:
                                                                      getSize(
                                                                          30.00),
                                                                  width: getSize(
                                                                      30.00),
                                                                  padding:
                                                                      getPadding(
                                                                          all:
                                                                              6),
                                                                  decoration: AppDecoration
                                                                      .outlineGray90026
                                                                      .copyWith(
                                                                          borderRadius: BorderRadiusStyle
                                                                              .roundedBorder5),
                                                                  child: Stack(
                                                                      children: [
                                                                        CustomImageView(
                                                                            svgPath:
                                                                                ImageConstant.imgFire,
                                                                            height: getSize(18.00),
                                                                            width: getSize(18.00),
                                                                            alignment: Alignment.center)
                                                                      ])))),
                                                      Container(
                                                          height:
                                                              getVerticalSize(
                                                                  250.00),
                                                          width:
                                                              getHorizontalSize(
                                                                  293.00),
                                                          margin: getMargin(
                                                              top: 30),
                                                          child: Stack(
                                                              alignment:
                                                                  Alignment
                                                                      .topCenter,
                                                              children: [
                                                                CustomImageView(
                                                                    imagePath:
                                                                        ImageConstant
                                                                            .imgImage,
                                                                    height: getVerticalSize(
                                                                        250.00),
                                                                    width: getHorizontalSize(
                                                                        293.00),
                                                                    alignment:
                                                                        Alignment
                                                                            .center),
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .topCenter,
                                                                    child: Padding(
                                                                        padding: getPadding(left: 12, top: 4, right: 20, bottom: 200),
                                                                        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.start, children: [
                                                                          Card(
                                                                              clipBehavior: Clip.antiAlias,
                                                                              elevation: 0,
                                                                              margin: getMargin(top: 15),
                                                                              color: ColorConstant.whiteA700,
                                                                              shape: RoundedRectangleBorder(borderRadius: BorderRadiusStyle.roundedBorder5),
                                                                              child: Container(
                                                                                  height: getSize(30.00),
                                                                                  width: getSize(30.00),
                                                                                  padding: getPadding(all: 6),
                                                                                  decoration: AppDecoration.outlineGray90026.copyWith(borderRadius: BorderRadiusStyle.roundedBorder5),
                                                                                  child: Stack(children: [
                                                                                    CustomImageView(svgPath: ImageConstant.imgArrowdown18x18, height: getSize(18.00), width: getSize(18.00), alignment: Alignment.center)
                                                                                  ]))),
                                                                          CustomImageView(
                                                                              svgPath: ImageConstant.imgCheckmark30x30,
                                                                              height: getSize(30.00),
                                                                              width: getSize(30.00),
                                                                              margin: getMargin(bottom: 15))
                                                                        ])))
                                                              ]))
                                                    ])))
                                      ])),
                              CustomImageView(
                                  imagePath: ImageConstant.imgImage322x316,
                                  height: getVerticalSize(322.00),
                                  width: getHorizontalSize(316.00),
                                  margin: getMargin(top: 70)),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Container(
                                      width: getHorizontalSize(271.00),
                                      margin: getMargin(left: 20, top: 59),
                                      child: Text("msg_want_to_share_y".tr,
                                          maxLines: null,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtInterBold28
                                              .copyWith(
                                                  height:
                                                      getVerticalSize(1.12))))),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Container(
                                      width: getHorizontalSize(314.00),
                                      margin: getMargin(left: 20, top: 38),
                                      child: Text("msg_high_definition3".tr,
                                          maxLines: null,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtInterRegular16
                                              .copyWith(
                                                  height:
                                                      getVerticalSize(1.24))))),
                              CustomButton(
                                  height: 50,
                                  width: 176,
                                  text: "msg_career_informat".tr,
                                  margin: getMargin(left: 20, top: 31),
                                  padding: ButtonPadding.PaddingAll14,
                                  fontStyle:
                                      ButtonFontStyle.InterMedium14WhiteA700,
                                  alignment: Alignment.centerLeft),
                              Container(
                                  width: getHorizontalSize(335.00),
                                  margin:
                                      getMargin(left: 20, top: 42, right: 20),
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
