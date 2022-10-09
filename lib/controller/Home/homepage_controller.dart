import 'package:ecommer_project/core/constants/routes/approutes.dart';
import 'package:ecommer_project/core/servers/serves.dart';
import 'package:ecommer_project/data/datasorcue/Home/homedata.dart';
import 'package:get/get.dart';
import 'package:ecommer_project/core/func/Internet/handlinddata.dart';
import 'package:ecommer_project/core/class/statusrequest.dart';

abstract class HomepageController extends GetxController { 
initalData();
getData();
goToItems(List categories, int selectedCat,String categortID);
}

class HomePageControllerImp extends HomepageController{
MyServices myServices = Get.find();
List items = [];
List categories =[];
late StatusRequest statusRequest;
HomeData homeData = HomeData(Get.find());
String? username;
String? id;
String? lang;

@override 
getData()async{
     statusRequest = StatusRequest.loading;
    var response = await homeData.getData();
    statusRequest = handlingData(response);
    if(StatusRequest.success == statusRequest){
      if(response['status'] == "success"){
        categories.addAll(response['categories']);
        items.addAll(response['items']);
      }else{
        statusRequest = StatusRequest.failure;
      }
    }
    update();
}

@override
initalData(){
  lang = myServices.sharedPreferences.getString("lang");
  username = myServices.sharedPreferences.getString('username');
  id = myServices.sharedPreferences.getString('id');
}

@override
  void onInit() {
    initalData();
    super.onInit();
  }

  @override
  goToItems(categories, selectedCat,categortID){
    Get.toNamed(AppRoute.itemsPage, arguments: {
      "categories": categories,
      "selectedCat": selectedCat,
      "catID":categortID,
    });
  }
}