import 'package:ecommer_project/controller/Animation/animation_controller.dart';
import 'package:ecommer_project/core/constants/imageassets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LiquedSwapSeconedPageWidget extends GetView<AnimationControllerImp>{
  const LiquedSwapSeconedPageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color:const Color(0xFF55006c),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:const[
                Text(
                  "GoldCoin",
                  style: AnimationControllerImp.goldCoinWhiteStyle,
                ),
                Text(
                  "Skip",
                  style: AnimationControllerImp.goldCoinWhiteStyle,
                ),
              ],
            ),
          ),
          Image.asset(AppImageAsset.onBoardingImageThree),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const[
                Text(
                  "Online",
                  style: AnimationControllerImp.whiteStyle,
                ),
                Text(
                  "Gaming",
                  style: AnimationControllerImp.boldStyle,
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  "Excepteur sint occaecat cupidatat\n"
                  "non proident, sunt in\n"
                  "culpa qui officia",
                  style: AnimationControllerImp.descriptionWhiteStyle,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}