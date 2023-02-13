import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/request_list_controller.dart';

class RequestListView extends GetView<RequestListController> {
  const RequestListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    controller.getRequestList();
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
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              subtitle: Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(Icons.phone),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(controller
                        .requestList!.data.requests[index].prospectPhone),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(Icons.email),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(controller
                        .requestList!.data.requests[index].prospectEmail),
                  ),
                ],
              ),
            );
          }),
    );
  }
}
