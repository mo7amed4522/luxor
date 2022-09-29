import 'package:ecommer_project/controller/ForgetPassword/resetpassword_controller.dart';
import 'package:ecommer_project/core/class/statusrequest.dart';
import 'package:ecommer_project/core/constants/imageassets.dart';
import 'package:ecommer_project/core/func/Auth/validationInput.dart';
import 'package:ecommer_project/view/widget/auth/customtextformfieldauth.dart';
import 'package:flutter/material.dart';
import 'package:ecommer_project/core/constants/Theme/color.dart';
import 'package:ecommer_project/view/widget/auth/customauthbutton.dart';
import 'package:ecommer_project/view/widget/auth/customtexttitleauth.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class ResetPasswordPage extends StatelessWidget {
  const ResetPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ResetePasswordControllerImp());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.backgroundColor,
        //ازاله الحدود 
        elevation: 0.0,
        centerTitle: true,
        title:Text('Reset Password',style: Theme.of(context).textTheme.headline1!.copyWith(color: AppColor.grey)),
      ),
      body: GetBuilder<ResetePasswordControllerImp>(
        builder: (controller) =>
        controller.statusRequest == StatusRequest.loading
        ? Center(child: Lottie.asset(AppImageAsset.loading))
        : Container(
        padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 15),
        child: Form(
          key: controller.formState,
          child: ListView(
            children: [
               const CustomTextTittleAuth(title: 'New Password'),
               const SizedBox(height:30),
               const CustomBodyAuth(text: 'Please Enter your new password'),
               const SizedBox(height: 80),
                CustomTextFormFildAuth(
                mycontroller: controller.password,
                hintText: "Password",
                lable: "Enter your new password",
                textInputType: TextInputType.visiblePassword,
                suffixIcon: Icons.lock_outline,
                validator: (val){
                  return validInput(val!, 5, 100, "password");
                },
              ),
               CustomTextFormFildAuth(
                mycontroller: controller.confirmPassword,
                hintText: "Cofirm Password",
                lable: "Enter your Confirm password",
                suffixIcon: Icons.lock_outline,
                textInputType: TextInputType.visiblePassword,
                validator: (val){
                  return validInput(val!, 5, 100, "password");
                },
              ),
              const SizedBox(height: 80),
              CustomButtonAuth(
                onPress: (){
                  controller.goToSuccessPassword();
                },
                text: "Save",
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