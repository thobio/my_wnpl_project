import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:my_wnpl_project/app/modules/talk_list/views/talk_list_view.dart';

import '../../request_list/views/request_list_view.dart';
import '../controllers/dashboard_controller.dart';

class DashboardView extends GetView<DashboardController> {
  const DashboardView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashboardController>(builder: (controller) {
      return Scaffold(
        body: IndexedStack(
          index: controller.tabBarCurrentIndex,
          children: const [RequestListView(), TalkListView()],
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
            ),
          ],
          type: BottomNavigationBarType.shifting,
          currentIndex: controller.tabBarCurrentIndex,
          selectedItemColor: Colors.purple[900],
          unselectedItemColor: Colors.deepPurple[300],
          showUnselectedLabels: true,
          iconSize: 40,
          elevation: 5,
          onTap: (indexInt) {
            controller.selectedTabIndex(indexInt);
          },
        ),
      );
    });
  }
}
