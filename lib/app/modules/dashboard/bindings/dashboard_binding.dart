import 'package:get/get.dart';
import 'package:my_wnpl_project/app/modules/request_list/controllers/request_list_controller.dart';
import 'package:my_wnpl_project/app/modules/talk_list/controllers/talk_list_controller.dart';

import '../controllers/dashboard_controller.dart';

class DashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DashboardController>(
      () => DashboardController(),
    );
    Get.lazyPut<RequestListController>(
      () => RequestListController(),
    );
    Get.lazyPut<TalkListController>(
      () => TalkListController(),
    );
  }
}
