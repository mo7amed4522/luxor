 // ignore_for_file: unnecessary_overrides

 import 'package:ecommer_project/core/class/statusrequest.dart';
import 'package:ecommer_project/core/constants/routes/approutes.dart';
import 'package:ecommer_project/core/func/Internet/handlinddata.dart';
import 'package:ecommer_project/data/datasorcue/ForgetPassword/verifiycode_forget.dart';
import 'package:get/get.dart';

 abstract class VerifingCodeController extends GetxController { 

  checkCode();
  goToResetPassword(String verifiyCode);
}

class VerifingCodeControllerImp extends VerifingCodeController{

   String? email; 
  StatusRequest? statusRequest;
   VerifiyCodeForgetPassword verifiyCodeForgetPassword = VerifiyCodeForgetPassword(Get.find());

  @override
  goToResetPassword(String verifiyCode) async{
    statusRequest = StatusRequest.loading;
       update();
    var response = await verifiyCodeForgetPassword.postData(email!,verifiyCode);
    statusRequest = handlingData(response);
    if(StatusRequest.success == statusRequest){
      if(response['status'] == "success"){
        //data.addAll(response['data']);
        Get.offNamed(AppRoute.resetCode, arguments: {"email":email});
      }else{
        Get.snackbar("warning", "Verifiy Code is not correct",snackPosition: SnackPosition.BOTTOM);
        statusRequest = StatusRequest.failure;
      }
    }
    update();
    //Get.offNamed(AppRoute.resetCode);
  }

  @override
  checkCode() {}

  @override
  void onInit() {
    email  = Get.arguments['users_email'];
    super.onInit();
  }
}