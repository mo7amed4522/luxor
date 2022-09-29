import 'package:ecommer_project/controller/onBoarding/onBoarding_controller.dart';
import 'package:ecommer_project/data/datasorcue/static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class CustomPageViewOnBoarding extends GetView<OnBoardingContollerImp> {
  const CustomPageViewOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: controller.pageController,
      onPageChanged: (value) {
        controller.onPageChange(value);
      },
      itemCount: onBoardingList.length,
      itemBuilder: (context, index) => Column(
        children: [
          Text(
            onBoardingList[index].title!,
            style: Theme.of(context).textTheme.headline1,
          ),
          const SizedBox(height: 80),
          Image.asset(
            onBoardingList[index].image!,
            width: Get.width/1.3,
            fit: BoxFit.fill,
          ),
          const SizedBox(height: 80),
          Container(
            width: double.infinity,
            alignment: Alignment.center,
            child: Text(
              onBoardingList[index].body!,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ),
        ],
      ),
    );
  }
}
