 import 'package:ecommer_project/core/class/statusrequest.dart';
import 'package:ecommer_project/core/constants/routes/approutes.dart';
import 'package:ecommer_project/core/func/Internet/handlinddata.dart';
import 'package:ecommer_project/data/datasorcue/ForgetPassword/checkemail_forget.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

 abstract class ForgetPasswordController extends GetxController { 

  checkEmail();

}

class ForgetPasswordControllerImp extends ForgetPasswordController{

  CheckEmailForgetPassword checkEmailForgetPassword = CheckEmailForgetPassword(Get.find());
  GlobalKey<FormState> formState = GlobalKey();
  late TextEditingController email;
   List data = [];
   StatusRequest? statusRequest;

  @override
  checkEmail()async{
    var formData = formState.currentState;
    if(formData!.validate()){
       statusRequest = StatusRequest.loading;
       update();
    var response = await checkEmailForgetPassword.postData(email.text);
    statusRequest = handlingData(response);
    if(StatusRequest.success == statusRequest){
      if(response['status'] == "success"){
        //data.addAll(response['data']);
        Get.offNamed(AppRoute.verfiyCode, arguments: {
          "users_email":email.text
        });
      }else{
        Get.snackbar("warning", "E-Mail Not Exist",snackPosition: SnackPosition.BOTTOM);
        statusRequest = StatusRequest.failure;
      }
    }
    update();
    }else{
      Get.snackbar("Error account", "you have entered not vaild account",snackPosition: SnackPosition.BOTTOM);
    }
  }


  @override
  void onInit() {
    email = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    super.dispose();
  }
  
}