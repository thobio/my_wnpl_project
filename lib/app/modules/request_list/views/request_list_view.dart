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
          itemCount: 5,
          itemBuilder: (context, int index) {
            return ListTile(
                leading: const Icon(Icons.add),
                title: Text("List item $index"));
          }),
    );
  }
}
