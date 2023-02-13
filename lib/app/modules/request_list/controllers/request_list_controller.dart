import 'package:get/get.dart';
import 'package:my_wnpl_project/app/data/providers/api_provider.dart';
import 'package:my_wnpl_project/app/data/providers/models/request_list_model.dart';

class RequestListController extends GetxController {
  RequestList? requestList;

  @override
  void onInit() {
    super.onInit();
    print("object1");
    getRequestList();
  }

  @override
  void onReady() {
    super.onReady();
    print("object");
    getRequestList();
  }

  void getRequestList() async {
    requestList = await AppProvider.fetchDataFromRequestListAPI();
    update();
  }
}
