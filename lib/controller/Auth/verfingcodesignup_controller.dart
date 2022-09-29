 // ignore_for_file: unnecessary_overrides

import 'package:ecommer_project/core/class/statusrequest.dart';
import 'package:ecommer_project/core/constants/routes/approutes.dart';
import 'package:ecommer_project/core/func/Internet/handlinddata.dart';
import 'package:ecommer_project/data/datasorcue/Auth/verifiycodesignup.dart';
import 'package:get/get.dart';

 abstract class VerifingCodeSignUpController extends GetxController { 

  checkCode();
  goToSuccessSignUp(String verifiycodeSignup);
}

class VerifingCodeSignUpControllerImp extends VerifingCodeSignUpController{

  VerifiyCodeSignupData verifiycodeSignupData = VerifiyCodeSignupData(Get.find());
 late String code;

   String? email; 
   StatusRequest? statusRequest;
   VerifiyCodeSignupData verifiyCodeSignupData = VerifiyCodeSignupData(Get.find());


  @override
  goToSuccessSignUp(String verifiycodeSignup) async{
    statusRequest = StatusRequest.loading;
       update();
    var response = await verifiyCodeSignupData.postData(email!,verifiycodeSignup);
    statusRequest = handlingData(response);
    if(StatusRequest.success == statusRequest){
      if(response['status'] == "success"){
        //data.addAll(response['data']);
        Get.offNamed(AppRoute.successSignUp);
      }else{
        Get.snackbar("warning", "Verifiy Code is not correct",snackPosition: SnackPosition.BOTTOM);
        statusRequest = StatusRequest.failure;
      }
    }
    update();
  }

  @override
  checkCode() {}

  @override
  void onInit() {
    email  = Get.arguments['users_email'];
    super.onInit();
  }
}