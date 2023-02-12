import 'package:get/get.dart';
import 'package:my_wnpl_project/app/data/providers/api_provider.dart';
import 'package:my_wnpl_project/app/data/providers/models/request_list_model.dart';

class RequestListController extends GetxController {
  RequestList? requestList;

  @override
  void onInit() {
    super.onInit();
    getRequestList();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void getRequestList() async {
    requestList = await AppProvider.fetchDataFromRequestListAPI();
    update();
  }
}
