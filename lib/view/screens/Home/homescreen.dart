// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:ecommer_project/controller/Home/homescreen_controller.dart';
import 'package:ecommer_project/view/widget/Home/custom_buttomappbar_widget.dart';
import "package:flutter/material.dart";
import 'package:get/get.dart';

class HomeScreenPage extends StatelessWidget {
  const HomeScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomeScreenControllerIMP());
    return GetBuilder<HomeScreenControllerIMP>(
      builder: (controller) => Scaffold(
        body: controller.listPage.elementAt(controller.currentPage),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.shopping_bag_outlined),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar:const CustomAppBarHomeScreenWidget(),
      ),
    );
  }
}
