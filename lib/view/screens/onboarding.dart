import 'package:ecommer_project/controller/onBoarding/onBoarding_controller.dart';
import 'package:ecommer_project/core/constants/Theme/color.dart';
import 'package:ecommer_project/view/widget/onBoardingWidget/pageview.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../widget/onBoardingWidget/dotController.dart';
import '../widget/onBoardingWidget/onBoardingButton.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(OnBoardingContollerImp());
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      body: SafeArea(
          child: Column(
        children: [
          const Expanded(
            flex: 4,
            child:CustomPageViewOnBoarding()
          ),
          Expanded(
            flex: 1,
            child: Column(
              children:const[
                CustomDotControllerOnboarding(),
                Spacer(flex: 2),
                CustomButtonOnBoarding(),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
