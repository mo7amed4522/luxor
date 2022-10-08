import 'package:ecommer_project/core/constants/Theme/color.dart';
import 'package:ecommer_project/core/controller/animation_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
// trasnform Route
class MyTrasnformPage extends StatelessWidget {
  const MyTrasnformPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.put(AnimationTransformIMP());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.backgroundColor,
        title: const Text("TransForm",style:TextStyle(fontSize:18,fontWeight: FontWeight.bold)),
        centerTitle: true,
      ),
      body:GetBuilder<AnimationTransformIMP>(
        builder: (controller) =>SizedBox(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            Center(
              child: Transform.rotate(
                angle: controller.valort,
                origin: const Offset(0,-100),
                child: Container(
                  color: Colors.red,
                  height: 200,
                  width: 100,
                ),
              ),
            ),
            Slider(
              value: controller.valort,
              onChanged: (value){
                controller.sliderFun(value);
              },min: 0,max:2*3.14,
            ),
          ],
        ),
      ),
      ),
    );
  }
}
// trasnform Mattix4
class MyTrasnformPageMatrix4 extends StatelessWidget {
  const MyTrasnformPageMatrix4({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.put(AnimationTransformIMP());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.backgroundColor,
        title: const Text("TransForm",style:TextStyle(fontSize:18,fontWeight: FontWeight.bold)),
        centerTitle: true,
      ),
      body:GetBuilder<AnimationTransformIMP>(
        builder: (controller) =>SizedBox(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            Center(
              child: Transform(
                transform: Matrix4.rotationZ(3.14)..scale(2.0)..translate(60.0),
                child: Container(
                  color: Colors.red,
                  height: 200,
                  width: 100,
                ),
              ),
            ),
          ],
        ),
      ),
      ),
    );
  }
}
// trasnform Mattix4
class MyTrasnformPageTrigger extends StatelessWidget {
  const MyTrasnformPageTrigger({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.put(AnimationTransformIMP());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.backgroundColor,
        title: const Text("TransForm",style:TextStyle(fontSize:18,fontWeight: FontWeight.bold)),
        centerTitle: true,
      ),
      body:GetBuilder<AnimationTransformIMP>(
        builder: (controller) =>
        SizedBox(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            Center(
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 600),
                curve: Curves.bounceIn,
                height: controller.myHeight,
                width: controller.myWidth,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(20),
                ),
                color: Colors.red,
                child:const Text("Animated Container"),
              ),
            ),
            GestureDetector(
              onTap: (){
                controller.changeFun();
              },
              child:const Text("Trigger Animated"),
            ),
          ],
        ),
      ),
      ),
    );
  }
}
// trasnform CrossFade
class MyTrasnformPageCrossFade extends StatelessWidget {
  const MyTrasnformPageCrossFade({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.put(AnimationTransformIMP());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.backgroundColor,
        title: const Text("TransForm",style:TextStyle(fontSize:18,fontWeight: FontWeight.bold)),
        centerTitle: true,
      ),
      body:GetBuilder<AnimationTransformIMP>(
        builder: (controller) =>
        SizedBox(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            Center(
              child:AnimatedCrossFade(
                firstChild:Container(height: 100,width: 100,color: Colors.red,child:const Text("One"),),
                secondChild: Container(height: 100,width: 100,color: Colors.green,child:const Text("Two"),),
                crossFadeState:controller.showFirst ? CrossFadeState.showFirst : CrossFadeState.showSecond,
                duration: const Duration(seconds: 1),  
                firstCurve: Curves.easeIn,
                secondCurve: Curves.linear,
              ),
            ),
            GestureDetector(
              onTap: (){
                controller.chngeCrossFade();
              },
              child:const Text("Trigger Animated"),
            ),
          ],
        ),
      ),
      ),
    );
  }
}
// Animated Text Style
class MyTrasnformPageAnimatedTextStyle extends StatelessWidget {
  const MyTrasnformPageAnimatedTextStyle({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.put(AnimationTransformIMP());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.backgroundColor,
        title: const Text("TransForm",style:TextStyle(fontSize:18,fontWeight: FontWeight.bold)),
        centerTitle: true,
      ),
      body:GetBuilder<AnimationTransformIMP>(
        builder: (controller) =>
        SizedBox(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            Center(
              child:AnimatedDefaultTextStyle(
               style: TextStyle(
                fontSize: controller.fontSize,
                color: controller.myColor,
               ), 
               duration: const Duration(seconds: 1),               
               curve: Curves.elasticIn,
               child:const Text("Khaled Moahmed"),
              ),
            ),
            GestureDetector(
              onTap: (){
                controller.changeFontStyle();
              },
              child:const Text("Trigger Animated"),
            ),
          ],
        ),
      ),
      ),
    );
  }
}
// Animated Opacity and Padding
class MyTrasnformPageAnimatedOpcityAndPadding extends StatelessWidget {
  const MyTrasnformPageAnimatedOpcityAndPadding({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.put(AnimationTransformIMP());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.backgroundColor,
        title: const Text("TransForm",style:TextStyle(fontSize:18,fontWeight: FontWeight.bold)),
        centerTitle: true,
      ),
      body:GetBuilder<AnimationTransformIMP>(
        builder: (controller) =>
        SizedBox(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            Center(
              child: AnimatedOpacity(
                duration: const Duration(seconds:1),
                opacity: controller.myOpacity,
                child: AnimatedContainer(
                  duration: const Duration(seconds:3),
                  height: controller.myHeight,
                  width: controller.myWidth,
                  padding: EdgeInsets.all(controller.padding),
                  color: controller.myColor,
                  child:const Text("Khled Moahmed"),
                ),
              )
            ),
            GestureDetector(
              onTap: (){
                controller.changeMyOpacity();
              },
              child:const Text("Trigger Animated"),
            ),
          ],
        ),
      ),
      ),
    );
  }
}
// AnimatedPostion
class MyTrasnformPageAnimatedPosition extends StatelessWidget {
  const MyTrasnformPageAnimatedPosition({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.put(AnimationTransformIMP());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.backgroundColor,
        title: const Text("TransForm",style:TextStyle(fontSize:18,fontWeight: FontWeight.bold)),
        centerTitle: true,
      ),
      body:GetBuilder<AnimationTransformIMP>(
        builder: (controller) =>
        SizedBox(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            Center(
              child: Container(
                width: 400,height: 400,
                color: Colors.red,
                child: Stack(children: [
                  AnimatedPositioned(
                    duration: const Duration(seconds: 1),
                    top: controller.top,
                    right: controller.right,
                    child:Container(
                      color: Colors.green,
                      width: 100,
                      height: 100,
                      child:const Text("Kahled Mohamed"),
                    ),
                  )
                ]),
              ),
            ),
            GestureDetector(
              onTap: (){
                controller.changePosition();
              },
              child:const Text("Trigger Animated"),
            ),
          ],
        ),
      ),
      ),
    );
  }
}
