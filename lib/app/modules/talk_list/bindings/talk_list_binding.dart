import 'package:get/get.dart';

import '../controllers/talk_list_controller.dart';

class TalkListBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TalkListController>(
      () => TalkListController(),
    );
  }
}
