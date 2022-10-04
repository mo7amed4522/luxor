import 'package:ecommer_project/core/class/crud.dart';
import 'package:ecommer_project/core/class/linkapi.dart';

class HomeData{
  Crud curd;
  HomeData(this.curd);
  getData()async{
    var response = await curd.postData(AppLink.home, {});
    return response.fold((l) => l, (r) => r);
  }
}