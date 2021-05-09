import 'package:barberapp/app/global/Components/bottom_nav_custom.dart';
import 'package:barberapp/app/modules/home/controllers/home_controller.dart';
import 'package:barberapp/app/modules/home/views/components/page1.dart';
import 'package:barberapp/app/modules/home/views/components/page2.dart';
import 'package:barberapp/app/modules/home/views/components/page3.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Barber App'),
        centerTitle: true,
        actions: [
          IconButton(
              icon: Icon(Icons.exit_to_app),
              onPressed: () {
                controller.logout();
              })
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(
            () => Visibility(
              visible: controller.selectedIndex.value == 0,
              child: Page1(),
            ),
          ),
          Obx(
            () => Visibility(
              visible: controller.selectedIndex.value == 1,
              child: Page2(),
            ),
          ),
          Obx(
            () => Visibility(
              visible: controller.selectedIndex.value == 2,
              child: Page3(),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavCustom(),
    );
  }
}
