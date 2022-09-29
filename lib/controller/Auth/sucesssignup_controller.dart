import 'package:ecommer_project/core/constants/routes/approutes.dart';
import 'package:get/get.dart';

abstract class SuccessSignUpController extends GetxController{
  gotoLoginPage();
}
class SuccessSignUpControllerImp extends SuccessSignUpController{
  @override
  gotoLoginPage() {
  Get.offAllNamed(AppRoute.login);
  }

}