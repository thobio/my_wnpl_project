import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/talk_list_controller.dart';

class TalkListView extends GetView<TalkListController> {
  const TalkListView({Key? key}) : super(key: key);
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
      ),
      body: const Center(
        child: Text(
          'TalkListView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
