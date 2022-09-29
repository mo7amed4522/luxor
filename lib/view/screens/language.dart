import 'package:ecommer_project/core/constants/Theme/color.dart';
import 'package:ecommer_project/core/constants/routes/approutes.dart';
import 'package:ecommer_project/core/localization/changelocal.dart';
import 'package:ecommer_project/view/widget/lang/custombuttonLang.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Language extends GetView<LocalController> {
  const Language({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("Choose Language"),
          backgroundColor: AppColor.backgroundColor),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomButtonLang(
                ontap: () {
                  controller.changeLanguage("AR");
                  Get.toNamed(AppRoute.onBoarding);
                },
                text: "AR",
              ),
              const SizedBox(height: 20),
              CustomButtonLang(
                ontap: () {
                  controller.changeLanguage("EN");
                  Get.toNamed(AppRoute.onBoarding);
                },
                text: "EN",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
