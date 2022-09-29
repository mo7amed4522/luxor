 import 'package:ecommer_project/core/class/statusrequest.dart';
import 'package:ecommer_project/core/constants/routes/approutes.dart';
import 'package:ecommer_project/core/func/Internet/handlinddata.dart';
import 'package:ecommer_project/data/datasorcue/ForgetPassword/resetepassword_forget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

 abstract class ResetePasswordController extends GetxController { 

  goToSuccessPassword();
}

class ResetePasswordControllerImp extends ResetePasswordController{
 
 GlobalKey<FormState> formState = GlobalKey();
 ResetePasswordForgetPAssword resetePasswordForgetPAssword = ResetePasswordForgetPAssword(Get.find());
 StatusRequest? statusRequest;
 late TextEditingController password;
 late TextEditingController confirmPassword;
 String? email; 



  @override
  goToSuccessPassword()async {
    if(password.text != confirmPassword.text) return Get.snackbar("Warring", "Password dosn't match try again !!", snackPosition: SnackPosition.BOTTOM);
    var formdata = formState.currentState;
    if(formdata!.validate()){
      statusRequest = StatusRequest.loading;
       update();
    var response = await resetePasswordForgetPAssword.postData(email!,password.text);
    statusRequest = handlingData(response);
    if(StatusRequest.success == statusRequest){
      if(response['status'] == "success"){
        Get.offNamed(AppRoute.successPassword);
      }else{
        Get.snackbar("warning", "Verifiy Code is not correct",snackPosition: SnackPosition.BOTTOM);
        statusRequest = StatusRequest.failure;
      }
    }
    update();
    }else{
      Get.snackbar("Error Restore your password", "We are Sorry !! we can't restor your password becouse you may have something wrong",snackPosition: SnackPosition.BOTTOM);
    }
  }

  @override
  void onInit() {
    email = Get.arguments['users_email'];
    password = TextEditingController();
    confirmPassword = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    password.dispose();
    confirmPassword.dispose();
    super.dispose();
  }

}