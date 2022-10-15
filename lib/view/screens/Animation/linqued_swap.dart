import 'package:ecommer_project/controller/Animation/animation_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
//import 'package:liquid_swipe/Constants/Helpers.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

class LiquedSwapPage extends StatelessWidget {
  const LiquedSwapPage({super.key});

  @override
  Widget build(BuildContext context) {
    AnimationControllerImp controller = Get.put(AnimationControllerImp());
    return Scaffold(
      body: LiquidSwipe(
          pages: controller.pages,
          enableLoop: true,
          fullTransitionValue: 300,
         // enableSlideIcon: true,
          waveType: WaveType.liquidReveal,
          positionSlideIcon: 0.5,
        ),
    );
  }
}