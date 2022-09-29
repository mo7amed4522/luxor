// ignore_for_file: file_names, no_leading_underscores_for_local_identifiers
import 'package:ecommer_project/controller/onBoarding/onBoarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import '../../../core/constants/Theme/color.dart';
import '../../../data/datasorcue/static/static.dart';

class CustomDotControllerOnboarding extends StatelessWidget {
  const CustomDotControllerOnboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnBoardingContollerImp>(
      init: OnBoardingContollerImp(),
      builder: (_controller) =>Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ...List.generate(
          onBoardingList.length,
          (index) => AnimatedContainer(
            margin: const EdgeInsets.only(right: 5),
            duration: const Duration(milliseconds: 900),
            width: _controller.currentPage == index ? 20 : 5,
            height: 6,
            decoration: BoxDecoration(
              color: AppColor.primaryColor,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
      ],
    ),
    );
  }
}
