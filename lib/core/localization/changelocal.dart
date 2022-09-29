// ignore_for_file: unrelated_type_equality_checks

import 'package:ecommer_project/core/constants/Theme/appthem.dart';
import 'package:ecommer_project/core/servers/serves.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LocalController extends GetxController{

 ThemeData appThem = themeEnglish;

  Locale? language;

  MyServices myServices = Get.find();

  changeLanguage(String langcode){
    Locale locale = Locale(langcode);
    myServices.sharedPreferences.setString('lang', langcode);
    appThem = language == "AR" ? themeArabic : themeEnglish;
    Get.changeTheme(appThem);
    Get.updateLocale(locale);
  }

  @override
  void onInit() {
    String? sharedPrefLang = myServices.sharedPreferences.getString('lang');
    if(sharedPrefLang == "AR"){
      language = const Locale("AR");
      appThem = themeArabic;
    }else if(sharedPrefLang == "EN") {
      language = const Locale("EN");
      appThem = themeEnglish;
    }else{
      language = Locale(Get.deviceLocale!.languageCode);
      appThem = themeEnglish;
    }
    super.onInit();
  }
}