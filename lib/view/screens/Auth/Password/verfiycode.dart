import 'package:ecommer_project/controller/ForgetPassword/verfiecode_controller.dart';
import 'package:flutter/material.dart';
import 'package:ecommer_project/core/constants/Theme/color.dart';
import 'package:ecommer_project/view/widget/auth/customtexttitleauth.dart';
import 'package:get/get.dart';

class VerfieyCodePage extends StatelessWidget {
  const VerfieyCodePage({super.key});

  @override
  Widget build(BuildContext context) {
   VerifingCodeControllerImp controller = Get.put(VerifingCodeControllerImp());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.backgroundColor,
        //ازاله الحدود 
        elevation: 0.0,
        centerTitle: true,
        title:Text('Verification Code',style: Theme.of(context).textTheme.headline1!.copyWith(color: AppColor.grey)),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 15),
        child: ListView(
          children:  [
              const CustomTextTittleAuth(title: 'Check code'),
              const SizedBox(height:10),
              const CustomBodyAuth(text: 'please Enter the Digit code Sent to you to mo7amed4522@gmail.com'),
              const SizedBox(height: 70),
              CustomOtPFieldAuth(
                onSubmit: (String verificationCode){
                  controller.goToResetPassword(verificationCode);
                },
              ),
            ],
        ),
      ),
    );
  }
}