import 'package:ecommer_project/data/models/itemesmodel.dart';
import 'package:get/get.dart';
abstract class ProductDetailsController extends GetxController{
  intialData();
}
class ProductDetailsControllerImp extends ProductDetailsController{
  late ItemsModel itemsModel;
  @override
  intialData() {
    itemsModel = Get.arguments['itemsmodel'];
  }

  @override
  void onInit() {
    intialData();
    super.onInit();
  }
}