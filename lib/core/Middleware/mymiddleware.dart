// ignore_for_file: body_might_complete_normally_nullable

import 'package:ecommer_project/core/constants/routes/approutes.dart';
import 'package:ecommer_project/core/servers/serves.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
class MyMiddleWare extends GetMiddleware{
  @override
  int? get priority => 1;

  MyServices myServices = Get.find();

  @override
  RouteSettings? redirect(String? route){
   if(myServices.sharedPreferences.getString("step") =="1"){
    return const RouteSettings(name: AppRoute.login);
   }
   if(myServices.sharedPreferences.getString("step") =="2"){
    return const RouteSettings(name: AppRoute.homePage);
   }
  }
}