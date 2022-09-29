 import 'package:ecommer_project/core/class/statusrequest.dart';
import 'package:ecommer_project/core/constants/routes/approutes.dart';
import 'package:ecommer_project/core/func/Internet/handlinddata.dart';
import 'package:ecommer_project/data/datasorcue/Auth/signupdatasource.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

 abstract class SignUpController extends GetxController { 

  signUp();
  goToSignIn();
}

class SignUpControllerImp extends SignUpController{

 
 GlobalKey<FormState> formState = GlobalKey();

 late TextEditingController userName;
 late TextEditingController email;
 late TextEditingController phone;
 late TextEditingController password;

 SignupData signupData = SignupData(Get.find());

  List data = [];
  StatusRequest? statusRequest;

  @override
  goToSignIn() {
    Get.offNamed(AppRoute.login);
  }

  @override
  signUp() async{
    var formData = formState.currentState;
    if(formData!.validate()){
       statusRequest = StatusRequest.loading;
       update();
    var response = await signupData.postData(userName.text,email.text,phone.text,password.text);
    statusRequest = handlingData(response);
    if(StatusRequest.success == statusRequest){
      if(response['status'] == "success"){
        //data.addAll(response['data']);
        Get.offNamed(AppRoute.verfingCodeSignUp, arguments: {
          "users_email":email.text,
        });
      }else{
        Get.snackbar("warning", "Phone Number or Email Already Exists",snackPosition: SnackPosition.BOTTOM);
        statusRequest = StatusRequest.failure;
      }
    }
    update();
    }else{
      Get.snackbar('Error Register', "you have an error in your email address or phone or password",snackPosition: SnackPosition.BOTTOM);
    }
  }

  @override
  void onInit() {
    userName = TextEditingController();
    email = TextEditingController();
    password = TextEditingController();
    phone = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    userName.dispose();
    email.dispose();
    password.dispose();
    phone.dispose();
    super.dispose();
  }
}