import 'package:ecommer_project/controller/Home/homepage_controller.dart';
import 'package:ecommer_project/core/constants/Theme/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomCardItemsWidget extends GetView<HomePageControllerImp> {
  final String? title;
  final String? body;
  const CustomCardItemsWidget({Key? key, this.body, this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.symmetric(vertical: 15),
      child: Stack(
        children: [
          Container(
            height: 150,
            decoration: BoxDecoration(
              color: AppColor.primaryColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: ListTile(
              title: Text(
                title!,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              subtitle: Text(
                body!,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
          ),
          Positioned(
            top: -20,
            right: controller.lang == "EN" ? -20 :null,
            left: controller.lang == "AR" ? -20 :null,
            child: Container(
              height: 160,
              width: 160,
              decoration: BoxDecoration(
                color: AppColor.secoundColor,
                borderRadius: BorderRadius.circular(160),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
