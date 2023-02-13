import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/request_list_controller.dart';

class RequestListView extends GetView<RequestListController> {
  const RequestListView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'MyWNPL',
          style: TextStyle(
            color: Colors.purple[900],
            fontSize: 30,
          ),
        ),
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.transparent,
      ),
      body: ListView.builder(
          itemCount: controller.requestList?.data.requests.length ?? 0,
          itemBuilder: (context, int index) {
            return ListTile(
              trailing: const Icon(Icons.arrow_right),
              title: Text(
                controller.requestList!.data.requests[index].prospectName,
              ),
              subtitle: Text(
                controller.requestList!.data.requests[index].prospectMessage,
              ),
            );
          }),
    );
  }
}
