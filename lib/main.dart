import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'app/routes/app_pages.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  var operatorId = prefs.getString("operatorId");
  runApp(
    GetMaterialApp(
      title: "Application",
      initialRoute: operatorId == null ? AppPages.INITIAL : AppPages.DASH,
      getPages: AppPages.routes,
    ),
  );
}
