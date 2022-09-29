import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

Future<bool> aleratExitApp(){
   Get.defaultDialog(
    title: "Warning",
    middleText: "Do you want to exit from App ?",
    actions: [
     GestureDetector(
      onTap: (){
        exit(0);
      },
      child:const Text("Confirm"),
     ),
     GestureDetector(
      onTap: (){
        Get.back();
      },
      child:const Text("Cancel"),
     ),
    ],
  );
  return Future.value(true);
}