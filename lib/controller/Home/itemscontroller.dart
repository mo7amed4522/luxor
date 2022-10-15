import 'package:ecommer_project/core/class/statusrequest.dart';
import 'package:ecommer_project/core/constants/routes/approutes.dart';
import 'package:ecommer_project/core/func/Internet/handlinddata.dart';
import 'package:ecommer_project/data/datasorcue/items/items_datasorcue.dart';
import 'package:ecommer_project/data/models/itemesmodel.dart';
import 'package:get/get.dart';

abstract class ItemsController extends GetxController{
  intialData();
  changeCat(int value,String catValue);
  getItems(String categoryID);
  goToPageProductDetails(ItemsModel itemsModel);
} 
class ItemsControllerIMP extends ItemsController{

  ItemsData itemsData = ItemsData(Get.find());
  List data = [];
 late StatusRequest statusRequest;
 List categories = [];
 String? catID;
 int? selectedCat;
  @override
  intialData(){
    categories = Get.arguments['categories'];
    selectedCat = Get.arguments['selectedCat'];
    catID = Get.arguments['categortID'];
    getItems(catID!);
  }
  @override
  void onInit() {
    intialData();
    super.onInit();
  }
  @override
  changeCat(int value,catValue) {
   selectedCat = value;
   catID = catValue;
   getItems(catID!);
   update();
  }
  @override
  getItems(categoryID) async{
    data.clear();
    statusRequest = StatusRequest.loading;
    var response = await itemsData.getData(categoryID);
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
  @override
  goToPageProductDetails(itemsModel) {
    Get.toNamed(AppRoute.productPage ,arguments: {
      "itemsmodel":itemsModel
    });
  }
}