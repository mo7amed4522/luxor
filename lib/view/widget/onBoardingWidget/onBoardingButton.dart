// ignore_for_file: file_names

import 'package:ecommer_project/controller/onBoarding/onBoarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import '../../../core/constants/Theme/color.dart';

class CustomButtonOnBoarding extends GetView<OnBoardingContollerImp>{
  const CustomButtonOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 30),
      height: 40,
      child: MaterialButton(
        onPressed: () {
          controller.next();
        },
        padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 0),
        textColor: Colors.white,
        color: AppColor.primaryColor,
        child: const Text('Continue'),
      ),
    );
  }
}
