// ignore_for_file: file_names
import 'package:ecommer_project/core/constants/routes/approutes.dart';
import 'package:ecommer_project/core/servers/serves.dart';
import 'package:ecommer_project/data/datasorcue/static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class OnBoardingController extends GetxController {
  next();
  onPageChange(int index);
}

class OnBoardingContollerImp extends OnBoardingController {
  late PageController pageController;
  MyServices myServise = Get.find();
  int currentPage = 0;

  @override
  next() {
    currentPage++;
   if(currentPage > onBoardingList.length -1){
    myServise.sharedPreferences.setString("step", "1");
     Get.offAllNamed(AppRoute.login);
   }else{
     pageController.animateToPage(
      currentPage,
      duration: const Duration(milliseconds: 900),
      curve: Curves.easeInOut,
    );
   }
  }

  @override
  onPageChange(int index) {
    currentPage = index;
    update();
  }

  @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }
}
