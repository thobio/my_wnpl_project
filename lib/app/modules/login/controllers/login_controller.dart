import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_wnpl_project/app/data/providers/api_provider.dart';
import 'package:my_wnpl_project/app/routes/app_pages.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginController extends GetxController {
  final GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();

  late TextEditingController emailController, passwordController;
  var email = "";
  var password = "";

  @override
  void onInit() {
    super.onInit();
    emailController = TextEditingController();
    passwordController = TextEditingController();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    emailController.dispose();
    passwordController.dispose();
  }

  String? validateEmail(String value) {
    if (!GetUtils.isEmail(value)) {
      return "Provide Valid Email";
    } else {
      return null;
    }
  }

  String? validatePhoneNumber(String value) {
    if (GetUtils.isNumericOnly(value) || GetUtils.isLengthEqualTo(value, 6)) {
      return "Provide Valid Phone Number";
    } else {
      return null;
    }
  }

  void checkLogin() async {
    final isValid = loginFormKey.currentState?.validate();
    if (!isValid!) {
      return;
    }
    loginFormKey.currentState!.save();
    var loginJson = await AppProvider.fetchDataFromLoginAPI();
    if (loginJson != null) {
      if (loginJson.data.operatorId.isNotEmpty) {
        SharedPreferences prefs = await SharedPreferences.getInstance();
        prefs.setString("operatorId", loginJson.data.operatorId);
        Get.offNamed(AppPages.DASH);
      }
    }
  }
}
