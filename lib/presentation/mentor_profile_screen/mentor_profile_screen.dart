import 'controller/mentor_profile_controller.dart';
import 'package:ajitkumar_s_application5/core/app_export.dart';
import 'package:ajitkumar_s_application5/widgets/app_bar/appbar_image.dart';
import 'package:ajitkumar_s_application5/widgets/app_bar/appbar_subtitle.dart';
import 'package:ajitkumar_s_application5/widgets/app_bar/appbar_title.dart';
import 'package:ajitkumar_s_application5/widgets/app_bar/custom_app_bar.dart';
import 'package:ajitkumar_s_application5/widgets/custom_button.dart';
import 'package:ajitkumar_s_application5/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class MentorProfileScreen extends GetWidget<MentorProfileController> {
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
                                  height: getVerticalSize(178.00),
                                  width: size.width,
                                  child: Stack(
                                      alignment: Alignment.bottomCenter,
                                      children: [
                                        Align(
                                            alignment: Alignment.topCenter,
                                            child: Container(
                                                height: getVerticalSize(113.00),
                                                width: size.width,
                                                decoration: BoxDecoration(
                                                    color:
                                                        ColorConstant.red5001,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            getHorizontalSize(
                                                                10.00))))),
                                        CustomImageView(
                                            imagePath: ImageConstant.imgBg,
                                            height: getSize(130.00),
                                            width: getSize(130.00),
                                            radius: BorderRadius.circular(
                                                getHorizontalSize(10.00)),
                                            alignment: Alignment.bottomCenter)
                                      ])),
                              Padding(
                                  padding: getPadding(top: 14),
                                  child: Text("lbl_kritsin_watson".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtInterMedium24.copyWith(
                                          height: getVerticalSize(1.00)))),
                              Padding(
                                  padding: getPadding(top: 4),
                                  child: Text("msg_founder_mento".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtInterMedium16Gray700
                                          .copyWith(
                                              height: getVerticalSize(1.00)))),
                              CustomButton(
                                  height: 50,
                                  width: 173,
                                  text: "lbl_contact_now".tr,
                                  margin: getMargin(top: 16),
                                  fontStyle: ButtonFontStyle.InterMedium16),
                              Container(
                                  width: getHorizontalSize(335.00),
                                  margin:
                                      getMargin(left: 20, top: 30, right: 20),
                                  padding: getPadding(
                                      left: 20, top: 24, right: 20, bottom: 24),
                                  decoration: AppDecoration.fillWhiteA700
                                      .copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.roundedBorder5),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Padding(
                                                  padding: getPadding(
                                                      top: 1, bottom: 3),
                                                  child: Text(
                                                      "lbl_total_course".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtInterSemiBold16Gray700
                                                          .copyWith(
                                                              height:
                                                                  getVerticalSize(
                                                                      1.00)))),
                                              Text("lbl_30".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtInterSemiBold20Red300
                                                      .copyWith(
                                                          height:
                                                              getVerticalSize(
                                                                  1.00)))
                                            ]),
                                        Padding(
                                            padding: getPadding(top: 15),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text("lbl_ratings".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtInterSemiBold16Gray700
                                                          .copyWith(
                                                              height:
                                                                  getVerticalSize(
                                                                      1.00))),
                                                  Spacer(),
                                                  CustomImageView(
                                                      svgPath:
                                                          ImageConstant.imgStar,
                                                      height: getSize(14.00),
                                                      width: getSize(14.00),
                                                      margin: getMargin(
                                                          top: 1, bottom: 5)),
                                                  Padding(
                                                      padding:
                                                          getPadding(left: 2),
                                                      child: RichText(
                                                          text: TextSpan(
                                                              children: [
                                                                TextSpan(
                                                                    text:
                                                                        "lbl_4_9"
                                                                            .tr,
                                                                    style: TextStyle(
                                                                        color: ColorConstant
                                                                            .gray900,
                                                                        fontSize:
                                                                            getFontSize(
                                                                                16),
                                                                        fontFamily:
                                                                            'Inter',
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .w600,
                                                                        height:
                                                                            getVerticalSize(1.00))),
                                                                TextSpan(
                                                                    text:
                                                                        "lbl_153"
                                                                            .tr,
                                                                    style: TextStyle(
                                                                        color: ColorConstant
                                                                            .red300,
                                                                        fontSize:
                                                                            getFontSize(
                                                                                16),
                                                                        fontFamily:
                                                                            'Inter',
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .w600,
                                                                        height: getVerticalSize(
                                                                            1.00),
                                                                        decoration:
                                                                            TextDecoration.underline)),
                                                                TextSpan(
                                                                    text: "lbl2"
                                                                        .tr,
                                                                    style: TextStyle(
                                                                        color: ColorConstant
                                                                            .gray900,
                                                                        fontSize:
                                                                            getFontSize(
                                                                                16),
                                                                        fontFamily:
                                                                            'Inter',
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .w600,
                                                                        height:
                                                                            getVerticalSize(1.00)))
                                                              ]),
                                                          textAlign:
                                                              TextAlign.left))
                                                ])),
                                        Padding(
                                            padding: getPadding(top: 14),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 1),
                                                      child: Text(
                                                          "lbl_experiences".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtInterSemiBold16Gray700
                                                              .copyWith(
                                                                  height:
                                                                      getVerticalSize(
                                                                          1.00)))),
                                                  Padding(
                                                      padding:
                                                          getPadding(bottom: 1),
                                                      child: Text(
                                                          "lbl_10_years".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtInterSemiBold16Gray900
                                                              .copyWith(
                                                                  height:
                                                                      getVerticalSize(
                                                                          1.00))))
                                                ])),
                                        Padding(
                                            padding: getPadding(top: 14),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text("lbl_grauduated".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtInterSemiBold16Gray700
                                                          .copyWith(
                                                              height:
                                                                  getVerticalSize(
                                                                      1.00))),
                                                  Text("lbl_yes".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtInterSemiBold16Gray900
                                                          .copyWith(
                                                              height:
                                                                  getVerticalSize(
                                                                      1.00)))
                                                ])),
                                        Padding(
                                            padding: getPadding(top: 17),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text("lbl_language".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtInterSemiBold16Gray700
                                                          .copyWith(
                                                              height:
                                                                  getVerticalSize(
                                                                      1.00))),
                                                  Text("lbl_english_french".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtInterSemiBold16Gray900
                                                          .copyWith(
                                                              height:
                                                                  getVerticalSize(
                                                                      1.00)))
                                                ])),
                                        Padding(
                                            padding:
                                                getPadding(top: 15, bottom: 1),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Padding(
                                                      padding: getPadding(
                                                          top: 4, bottom: 2),
                                                      child: Text(
                                                          "lbl_social".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtInterSemiBold16Gray700
                                                              .copyWith(
                                                                  height:
                                                                      getVerticalSize(
                                                                          1.00)))),
                                                  Spacer(),
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgFacebook16x16,
                                                      height: getSize(16.00),
                                                      width: getSize(16.00),
                                                      margin: getMargin(
                                                          top: 5, bottom: 5),
                                                      onTap: () {
                                                        onTapImgFacebook();
                                                      }),
                                                  GestureDetector(
                                                      onTap: () {
                                                        onTapStackcamera();
                                                      },
                                                      child: Card(
                                                          clipBehavior:
                                                              Clip.antiAlias,
                                                          elevation: 0,
                                                          margin: getMargin(
                                                              left: 11),
                                                          color: ColorConstant
                                                              .red300,
                                                          shape: RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadiusStyle
                                                                      .circleBorder15),
                                                          child: Container(
                                                              height: getSize(
                                                                  27.00),
                                                              width: getSize(
                                                                  27.00),
                                                              padding: getPadding(
                                                                  all: 6),
                                                              decoration: AppDecoration
                                                                  .fillRed300
                                                                  .copyWith(
                                                                      borderRadius:
                                                                          BorderRadiusStyle
                                                                              .circleBorder15),
                                                              child: Stack(
                                                                  children: [
                                                                    CustomImageView(
                                                                        svgPath:
                                                                            ImageConstant
                                                                                .imgCamera,
                                                                        height: getSize(
                                                                            13.00),
                                                                        width: getSize(
                                                                            13.00),
                                                                        alignment:
                                                                            Alignment
                                                                                .center,
                                                                        onTap:
                                                                            () {
                                                                          onTapImgCamera();
                                                                        })
                                                                  ])))),
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgTwitter13x16,
                                                      height: getVerticalSize(
                                                          13.00),
                                                      width: getHorizontalSize(
                                                          16.00),
                                                      margin: getMargin(
                                                          left: 11,
                                                          top: 6,
                                                          bottom: 7),
                                                      onTap: () {
                                                        onTapImgTwitter();
                                                      }),
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgLinkedin14x16,
                                                      height: getVerticalSize(
                                                          14.00),
                                                      width: getHorizontalSize(
                                                          16.00),
                                                      margin: getMargin(
                                                          left: 11,
                                                          top: 6,
                                                          bottom: 6))
                                                ]))
                                      ])),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: getPadding(left: 20, top: 30),
                                      child: Row(children: [
                                        Container(
                                            width: getHorizontalSize(81.00),
                                            padding: getPadding(
                                                left: 20,
                                                top: 11,
                                                right: 20,
                                                bottom: 11),
                                            decoration: AppDecoration
                                                .txtFillOrange200
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .txtRoundedBorder5),
                                            child: Text("lbl_about".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtInterMedium14WhiteA700
                                                    .copyWith(
                                                        height: getVerticalSize(
                                                            1.18)))),
                                        Container(
                                            width: getHorizontalSize(96.00),
                                            margin: getMargin(left: 20),
                                            padding: getPadding(
                                                left: 20,
                                                top: 11,
                                                right: 20,
                                                bottom: 11),
                                            decoration: AppDecoration
                                                .txtFillWhiteA700
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .txtRoundedBorder5),
                                            child: Text("lbl_courses".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtInterMedium14Gray900
                                                    .copyWith(
                                                        height: getVerticalSize(
                                                            1.18)))),
                                        Container(
                                            width: getHorizontalSize(96.00),
                                            margin: getMargin(left: 20),
                                            padding: getPadding(
                                                left: 20,
                                                top: 11,
                                                right: 20,
                                                bottom: 11),
                                            decoration: AppDecoration
                                                .txtFillWhiteA700
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .txtRoundedBorder5),
                                            child: Text("lbl_reviews".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtInterMedium14Gray900
                                                    .copyWith(
                                                        height: getVerticalSize(
                                                            1.18))))
                                      ]))),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: getPadding(left: 20, top: 28),
                                      child: Text("lbl_about_kritsin".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtInterSemiBold24Gray900
                                              .copyWith(
                                                  height:
                                                      getVerticalSize(1.00))))),
                              Container(
                                  width: getHorizontalSize(326.00),
                                  margin: getMargin(top: 16),
                                  child: Text("msg_lorem_ipsum_dol".tr,
                                      maxLines: null,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtInterRegular16
                                          .copyWith(
                                              height: getVerticalSize(1.24)))),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: getPadding(left: 20, top: 31),
                                      child: Text("lbl_certification".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtInterSemiBold24Gray900
                                              .copyWith(
                                                  height:
                                                      getVerticalSize(1.00))))),
                              Container(
                                  width: getHorizontalSize(326.00),
                                  margin: getMargin(top: 16),
                                  child: Text("msg_lorem_ipsum_dol2".tr,
                                      maxLines: null,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtInterRegular16
                                          .copyWith(
                                              height: getVerticalSize(1.24)))),
                              Container(
                                  width: getHorizontalSize(335.00),
                                  margin:
                                      getMargin(left: 20, top: 72, right: 20),
                                  padding: getPadding(
                                      left: 28, top: 40, right: 28, bottom: 40),
                                  decoration: AppDecoration.fillBlack90001
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder10),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Container(
                                            width: getHorizontalSize(253.00),
                                            margin: getMargin(top: 4),
                                            child: Text(
                                                "msg_subscribe_for_g".tr,
                                                maxLines: null,
                                                textAlign: TextAlign.center,
                                                style: AppStyle
                                                    .txtInterBold28WhiteA700
                                                    .copyWith(
                                                        height: getVerticalSize(
                                                            0.94)))),
                                        Container(
                                            width: getHorizontalSize(277.00),
                                            margin: getMargin(top: 26),
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
                                                    onTapImgFacebookOne();
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
                                                              onTapImgCameraOne();
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
                                                    onTapImgTwitterOne();
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

  onTapStackcamera() async {
    await PermissionManager.askForPermission(Permission.camera);
    await PermissionManager.askForPermission(Permission.storage);
    List<String?>? imageList = [];
    await FileManager().showModelSheetForImage(getImages: (value) async {
      imageList = value;
    });
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

  onTapImgFacebookOne() async {
    var url = 'https://www.facebook.com/login/';
    if (!await launch(url)) {
      throw 'Could not launch https://www.facebook.com/login/';
    }
  }

  onTapImgCameraOne() async {
    await PermissionManager.askForPermission(Permission.camera);
    await PermissionManager.askForPermission(Permission.storage);
    List<String?>? imageList = [];
    await FileManager().showModelSheetForImage(getImages: (value) async {
      imageList = value;
    });
  }

  onTapImgTwitterOne() async {
    var url = 'https://twitter.com/login/';
    if (!await launch(url)) {
      throw 'Could not launch https://twitter.com/login/';
    }
  }
}
