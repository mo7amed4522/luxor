import 'package:ecommer_project/controller/Auth/verfingcodesignup_controller.dart';
import 'package:ecommer_project/core/class/statusrequest.dart';
import 'package:ecommer_project/core/constants/imageassets.dart';
import 'package:flutter/material.dart';
import 'package:ecommer_project/core/constants/Theme/color.dart';
import 'package:ecommer_project/view/widget/auth/customtexttitleauth.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class VerfieyCodeSignUpPage extends StatelessWidget {
  const VerfieyCodeSignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(VerifingCodeSignUpControllerImp());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.backgroundColor,
        //ازاله الحدود 
        elevation: 0.0,
        centerTitle: true,
        title:Text('Verification Code',style: Theme.of(context).textTheme.headline1!.copyWith(color: AppColor.grey)),
      ),
      body: GetBuilder<VerifingCodeSignUpControllerImp>(
        builder: (controller ) {
         return 
         controller.statusRequest == StatusRequest.loading 
         ? Center(child: Lottie.asset(AppImageAsset.loading))
         :Container(
        padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 15),
        child: ListView(
          children:  [
              const CustomTextTittleAuth(title: 'Check code'),
              const SizedBox(height:10),
              const CustomBodyAuth(text: 'please Enter the Digit code Sent to you to mo7amed4522@gmail.com'),
              const SizedBox(height: 70),
              CustomOtPFieldAuth(
                onSubmit: (String verificationCode){
                  controller.goToSuccessSignUp(verificationCode);
                },
              ),
            ],
        ),
      );
        },
      ),
    );
  }
}