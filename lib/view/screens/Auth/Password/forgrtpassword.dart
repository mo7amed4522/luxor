// ignore_for_file: file_names
import 'package:ecommer_project/controller/ForgetPassword/forgetpassword_controller.dart';
import 'package:ecommer_project/core/class/statusrequest.dart';
import 'package:ecommer_project/core/constants/Theme/color.dart';
import 'package:ecommer_project/core/constants/imageassets.dart';
import 'package:ecommer_project/core/func/Auth/validationInput.dart';
import 'package:ecommer_project/view/widget/auth/customauthbutton.dart';
import 'package:ecommer_project/view/widget/auth/customtextformfieldauth.dart';
import 'package:ecommer_project/view/widget/auth/customtexttitleauth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ForgetPasswordControllerImp());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.backgroundColor,
        //ازاله الحدود 
        elevation: 0.0,
        centerTitle: true,
        title:Text('Forget Password',style: Theme.of(context).textTheme.headline1!.copyWith(color: AppColor.grey)),
      ),
      body: GetBuilder<ForgetPasswordControllerImp>(
        builder: (controller) => 
        controller.statusRequest == StatusRequest.loading
        ? Center(child: Lottie.asset(AppImageAsset.loading))
        : Container(
        padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 15),
        child: Form(
          key: controller.formState,
          child: ListView(
            children: [
               const CustomTextTittleAuth(title: 'Recive Email'),
               const SizedBox(height:10),
               const CustomBodyAuth(text: 'please Enter your Email Address To Recive A verification code'),
               const SizedBox(height: 70),
              CustomTextFormFildAuth(
                mycontroller: controller.email,
                hintText: "E-Mail",
                lable: "Enter your e_mail address",
                suffixIcon: Icons.email_outlined,
                textInputType: TextInputType.emailAddress,
                validator: (val){
                  return validInput(val!, 5, 100, "email");
                },
              ),
              CustomButtonAuth(
                onPress: (){
                  controller.checkEmail();
                },
                text: "Check",
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
      ),
    );
  }
}