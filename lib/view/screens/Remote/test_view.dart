import 'package:ecommer_project/controller/remote/testdata_remote_controller.dart';
import 'package:ecommer_project/core/class/handlinddataview.dart';
import 'package:ecommer_project/core/constants/Theme/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TestViewPage extends StatelessWidget {
  const TestViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(TestController());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.backgroundColor,
        elevation: 0.0,
        title:const Text("Test Page"),
      ),
      body: GetBuilder<TestController>(
        builder: (controller){
         
          return HandlingDataView(
            statusRequest: controller.statusRequest,
            widget: ListView.builder(
              itemCount: controller.data.length,
              itemBuilder: (context,index){
                return Text("${controller.data}");
              },
            ),
          );
        },
      ),
    );
  }
}