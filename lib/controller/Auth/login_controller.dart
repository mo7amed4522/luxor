 import 'package:ecommer_project/core/class/statusrequest.dart';
import 'package:ecommer_project/core/constants/routes/approutes.dart';
import 'package:ecommer_project/core/func/Internet/handlinddata.dart';
import 'package:ecommer_project/core/servers/serves.dart';
import 'package:ecommer_project/data/datasorcue/Auth/logindatasorcue.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

 abstract class LoginController extends GetxController { 

  login();
  goToSignUp();
  goToForgetPassword();
}

class LoginContollerImp extends LoginController{


 IconData iconDate = Icons.visibility_off_outlined;
 GlobalKey<FormState> formState = GlobalKey();
 bool isShowPassword = true;
 late TextEditingController email;
 late TextEditingController password;
 List data = [];
StatusRequest? statusRequest;
MyServices myServices = Get.find();
SigninData signinData = SigninData(Get.find());

 
changeShowPassword(){
  if (isShowPassword == true) {
    isShowPassword = false;
    iconDate = Icons.remove_red_eye_outlined;
  } else {
    isShowPassword = true;
    iconDate = Icons.visibility_off_outlined;
  }
  update();
}


  @override
  goToSignUp() {
    Get.offNamed(AppRoute.signUp);
  }

  @override
  login() async{
   var formData = formState.currentState;
    if(formData!.validate()){
       statusRequest = StatusRequest.loading;
       update();
    var response = await signinData.postData(email.text,password.text);
    statusRequest = handlingData(response);
    if(StatusRequest.success == statusRequest){
      if(response['status'] == "success"){
        myServices.sharedPreferences.setString("id", response['data']['users_id']);
        myServices.sharedPreferences.setString("username", response['data']['users_name']);
        myServices.sharedPreferences.setString("email", response['data']['users_email']);
        myServices.sharedPreferences.setString("phone", response['data']['users_phone']);
        myServices.sharedPreferences.setString("step", "2");
        Get.offNamed(AppRoute.homePage);
      }else{
        Get.snackbar("warning", "E-Mail or password is wrong",snackPosition: SnackPosition.BOTTOM);
        statusRequest = StatusRequest.failure;
      }
    }
    update();
    }else{
      Get.snackbar('Error Login', "you have an error while Login to your account !");
    }
  }

  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }
  
  @override
  goToForgetPassword() {
  Get.toNamed(AppRoute.forgetPassword);
  }
}