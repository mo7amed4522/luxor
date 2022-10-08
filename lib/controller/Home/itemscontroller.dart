import 'package:ecommer_project/core/class/statusrequest.dart';
import 'package:ecommer_project/core/func/Internet/handlinddata.dart';
import 'package:ecommer_project/data/datasorcue/items/items_datasorcue.dart';
import 'package:get/get.dart';

abstract class ItemsController extends GetxController{
  intialData();
  changeCat(int value);
  getItems();
} 
class ItemsControllerIMP extends ItemsController{

  ItemsData itemsData = ItemsData(Get.find());

  List data = [];

  late StatusRequest statusRequest;


 List categories = [];
 int? selectedCat;

  @override
  intialData(){
    categories = Get.arguments['categories'];
    selectedCat = Get.arguments['selectedCat'];
    getItems();
  }

  @override
  void onInit() {
    intialData();
    super.onInit();
  }

  @override
  changeCat(int value) {
   selectedCat = value;
   update();
  }

  @override
  getItems() async{
    statusRequest = StatusRequest.loading;
    var response = await itemsData.getData();
    statusRequest = handlingData(response);
    if(StatusRequest.success == statusRequest){
      if(response['status'] == "success"){
        data.addAll(response['data']);
      }else{
        statusRequest = StatusRequest.failure;
      }
    }
    update();
  }
}