// ignore_for_file: file_names
import 'package:ecommer_project/controller/Auth/signup_controller.dart';
import 'package:ecommer_project/core/class/statusrequest.dart';
import 'package:ecommer_project/core/constants/Theme/color.dart';
import 'package:ecommer_project/core/constants/imageassets.dart';
import 'package:ecommer_project/core/func/Auth/aleartexitapp.dart';
import 'package:ecommer_project/core/func/Auth/validationInput.dart';
import 'package:ecommer_project/view/widget/auth/customauthbutton.dart';
import 'package:ecommer_project/view/widget/auth/customtextformfieldauth.dart';
import 'package:ecommer_project/view/widget/auth/customtexttitleauth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
     Get.put(SignUpControllerImp());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.backgroundColor,
        //ازاله الحدود
        elevation: 0.0,
        centerTitle: true,
        title: Text('Sign Up',
            style: Theme.of(context)
                .textTheme
                .headline1!
                .copyWith(color: AppColor.grey)),
      ),
      body: WillPopScope(
        onWillPop: aleratExitApp,
        child:GetBuilder<SignUpControllerImp>(
        init: SignUpControllerImp(),
        builder: (controller) => 
        controller.statusRequest == StatusRequest.loading
        ?Center(child: Lottie.asset(AppImageAsset.loading))
        :
        Container(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
        child: Form(
          key: controller.formState,
          child: ListView(
            children: [
              const CustomTextTittleAuth(title: 'Welcome Back'),
              const SizedBox(height: 10),
              const CustomBodyAuth(
                  text:
                      'Sign In with your email and password or continue with your Social account'),
              const SizedBox(height: 70),
              CustomTextFormFildAuth(
                mycontroller: controller.userName,
                hintText: "UserName",
                lable: "Enter your userName",
                suffixIcon: Icons.person_outline,
                textInputType: TextInputType.name,
                validator: (val) {
                  return validInput(val!, 5, 100, "username");
                },
              ),
              CustomTextFormFildAuth(
                mycontroller: controller.email,
                hintText: "E-Mail",
                lable: "Enter your e_mail address",
                suffixIcon: Icons.email_outlined,
                textInputType: TextInputType.emailAddress,
                validator: (val) {
                  return validInput(val!, 5, 100, "email");
                },
              ),
              CustomTextFormFildAuth(
                mycontroller: controller.phone,
                hintText: "Phone",
                lable: "Enter your phone",
                suffixIcon: Icons.phone_android_outlined,
                textInputType: TextInputType.phone,
                validator: (val) {
                  return validInput(val!, 5, 20, "phone");
                },
              ),
              CustomTextFormFildAuth(
                mycontroller: controller.password,
                hintText: "Password",
                lable: "Enter your password",
                suffixIcon: Icons.lock_outline,
                textInputType: TextInputType.visiblePassword,
                validator: (val) {
                  return validInput(val!, 5, 100, "password");
                },
              ),
              CustomButtonAuth(
                onPress: () {
                  controller.signUp();
                },
                text: "Sign Up",
              ),
              const SizedBox(height: 10),
              CustomBottomAuth(
                onPress: () {
                  controller.goToSignIn();
                },
                text1: "You have already an account !!",
                textButton: "SignIn",
              ),
            ],
          ),
        ),
      ),
      ),),
    );
  }
}
