// ignore_for_file: file_names, no_leading_underscores_for_local_identifiers
import 'package:ecommer_project/controller/Auth/login_controller.dart';
import 'package:ecommer_project/core/class/statusrequest.dart';
import 'package:ecommer_project/core/constants/Theme/color.dart';
import 'package:ecommer_project/core/constants/imageassets.dart';
import 'package:ecommer_project/core/func/Auth/aleartexitapp.dart';
import 'package:ecommer_project/core/func/Auth/validationInput.dart';
import 'package:ecommer_project/view/widget/auth/customauthbutton.dart';
import 'package:ecommer_project/view/widget/auth/customtextformfieldauth.dart';
import 'package:ecommer_project/view/widget/auth/customtexttitleauth.dart';
import 'package:ecommer_project/view/widget/auth/logoauth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(LoginContollerImp());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.backgroundColor,
        //ازاله الحدود 
        elevation: 0.0,
        centerTitle: true,
        title:Text('Log In!',style: Theme.of(context).textTheme.headline1!.copyWith(color: AppColor.grey)),
      ),
      body: WillPopScope(
        onWillPop: aleratExitApp,
        child: GetBuilder<LoginContollerImp>(
          builder: (controller) {
            return 
        controller.statusRequest == StatusRequest.loading 
        ? Center(child: Lottie.asset(AppImageAsset.loading))
        : Container(
        padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 15),
        child: Form(
          key: controller.formState,
          child: ListView(
            children: [
               const LogoAuth(),
               const CustomTextTittleAuth(title: 'Welcome Back'),
               const SizedBox(height:10),
               const CustomBodyAuth(text: 'Sign In with your email and password or continue with your Social account'),
               const SizedBox(height: 70),
              CustomTextFormFildAuth(
                mycontroller: controller.email,
                hintText: "E-Mail",
                lable: "Enter your email",
                suffixIcon: Icons.email_outlined,
                textInputType: TextInputType.emailAddress,
                validator: (val){
                  return validInput(val!, 5, 100, "email");
                },
              ),
              GetBuilder<LoginContollerImp>(
                init: LoginContollerImp(),
                builder: (_controller) => CustomTextFormFildAuth(
                mycontroller: _controller.password,
                hintText: "Enter your password",
                lable: "Passowrd",
                suffixIcon: _controller.iconDate,
                isShowText: _controller.isShowPassword,
                sufficsIconTap: (){
                  _controller.changeShowPassword();
                },
                textInputType: TextInputType.visiblePassword,
                validator: (val){
                  return validInput(val!, 5, 100, "password");
                },
              ),
              ),
              InkWell(
                onTap: (){controller.goToForgetPassword();},
                child:const Text(
                  'Forget Password',
                  textAlign: TextAlign.end,
                ),
              ),
              const SizedBox(height: 50),
              CustomButtonAuth(
                onPress: (){
                  controller.login();
                },
                text: "Sign In",
              ),
              const SizedBox(height: 10),
              CustomBottomAuth(
               onPress: (){
                controller.goToSignUp();
               },
               text1: "Don't have an account ? ",
               textButton: "Sign Up",
              ),
            ],
          ),
        ),
      );
          },
        ),
      ),
    );
  }
}