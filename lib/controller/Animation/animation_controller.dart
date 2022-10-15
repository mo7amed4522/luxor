import 'package:ecommer_project/view/widget/liqed_swap/liqued_swap_firstpage.dart';
import 'package:ecommer_project/view/widget/liqed_swap/liqued_swap_secpage.dart';
import 'package:ecommer_project/view/widget/liqed_swap/liqued_swap_thiredpage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class AnimationController extends GetxController{}
class AnimationControllerImp extends AnimationController{
static const TextStyle goldcoinGreyStyle = TextStyle(
      color: Colors.grey,
      fontSize: 20.0,
      fontWeight: FontWeight.bold,
      fontFamily: "Product Sans");

  static const TextStyle goldCoinWhiteStyle = TextStyle(
      color: Colors.white,
      fontSize: 20.0,
      fontWeight: FontWeight.bold,
      fontFamily: "Product Sans");

  static const TextStyle greyStyle =
      TextStyle(fontSize: 40.0, color: Colors.grey, fontFamily: "Product Sans");
        static const TextStyle whiteStyle =
      TextStyle(fontSize: 40.0, color: Colors.white, fontFamily: "Product Sans");

  static const TextStyle boldStyle = TextStyle(
    fontSize: 50.0,
    color: Colors.black,
    fontFamily: "Product Sans",
    fontWeight: FontWeight.bold,
  );

  static const TextStyle descriptionGreyStyle = TextStyle(
    color: Colors.grey,
    fontSize: 20.0,
    fontFamily: "Product Sans",
  );

  static const TextStyle descriptionWhiteStyle = TextStyle(
    color: Colors.white,
    fontSize: 20.0,
    fontFamily: "Product Sans",
  );



   final pages = [
    const FirstPageLiquedSwapWidget(),
    const LiquedSwapSeconedPageWidget(),
    const LiquedSwapThiredPageWidget(),
    ];
} 