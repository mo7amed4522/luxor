import 'package:ecommer_project/core/class/crud.dart';
import 'package:ecommer_project/core/class/linkapi.dart';

class ItemsData{
  Crud curd;
  ItemsData(this.curd);
  getData()async{
    var response = await curd.postData(AppLink.itemsVew, {});
    return response.fold((l) => l, (r) => r);
  }
}