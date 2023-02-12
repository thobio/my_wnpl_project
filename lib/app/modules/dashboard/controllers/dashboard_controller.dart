import 'package:get/get.dart';

class DashboardController extends GetxController {
  var tabBarCurrentIndex = 0;
  void selectedTabIndex(int intIndex) {
    tabBarCurrentIndex = intIndex;
    update();
  }
}
