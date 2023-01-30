import 'package:ajitkumar_s_application5/core/app_export.dart';
import 'package:ajitkumar_s_application5/presentation/sign_up_dialog/models/sign_up_model.dart';
import 'package:flutter/material.dart';

class SignUpController extends GetxController {
  TextEditingController googleController = TextEditingController();

  TextEditingController group7608Controller = TextEditingController();

  TextEditingController emailOneController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  Rx<SignUpModel> signUpModelObj = SignUpModel().obs;

  Rx<bool> isShowPassword = false.obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    googleController.dispose();
    group7608Controller.dispose();
    emailOneController.dispose();
    passwordController.dispose();
  }
}
