import 'package:ecommer_project/core/constants/routes/approutes.dart';
import 'package:get/get.dart';

abstract class SuccessResetePasswordController extends GetxController{
  gotoLoginPage();
}
class SuccessResetePasswordControllerImp extends SuccessResetePasswordController{
  @override
  gotoLoginPage() {
  Get.offAllNamed(AppRoute.login);
  }

}