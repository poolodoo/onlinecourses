import 'package:ajitkumar_s_application5/core/app_export.dart';
import 'package:ajitkumar_s_application5/presentation/pricing_screen/models/pricing_model.dart';
import 'package:flutter/material.dart';

class PricingController extends GetxController {
  TextEditingController group1888Controller = TextEditingController();

  TextEditingController group1886Controller = TextEditingController();

  TextEditingController group1884Controller = TextEditingController();

  TextEditingController buttonController = TextEditingController();

  Rx<PricingModel> pricingModelObj = PricingModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    group1888Controller.dispose();
    group1886Controller.dispose();
    group1884Controller.dispose();
    buttonController.dispose();
  }
}
