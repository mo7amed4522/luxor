import 'package:ecommer_project/core/servers/serves.dart';
import 'package:get/get.dart';

class HomepageController extends GetxController { 

}

class HomePageControllerImp extends HomepageController{
MyServices myServices = Get.find();

String? username;
initalData(){
  myServices.sharedPreferences.getString('username');
  myServices.sharedPreferences.getString('id');
}

@override
  void onInit() {
    initalData();
    super.onInit();
  }
}