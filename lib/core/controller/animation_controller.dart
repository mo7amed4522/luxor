import 'package:flutter/material.dart';
import 'package:get/get.dart';
abstract class AnimationTransform extends GetxController{
  sliderFun(double value);
  changeFun();
  chngeCrossFade();
  changeFontStyle();
  changeMyOpacity();
  changePosition();
}

class AnimationTransformIMP extends AnimationTransform{
  double valort =0.0;

  double myWidth = 200;
  double myHeight = 200;
  double myRaduis = 0;

  bool showFirst = true;

  double fontSize = 20.0;
  Color myColor = Colors.red;

  double padding = 10;
  double myOpacity = 0.5;
  

  double top = 0.0;
  double right = 0.0;


  @override
  sliderFun(value){
   valort = value;
   update();
  }

  @override
  changeFun() {
    myHeight = 300;
    myWidth = 300;
  }

  @override
  chngeCrossFade(){
    showFirst = !showFirst;
    update();
  }

  @override
  changeFontStyle() {
    fontSize = 30.0;
    myColor = Colors.blue;
  }

  @override
  changeMyOpacity() {
    myOpacity = 1.0;
    changeFontStyle();
    update();
  }

  @override
  changePosition(){
    top = 100.0;
    right = 100.0;
    update();
  }
}