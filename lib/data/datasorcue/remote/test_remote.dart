import 'package:ecommer_project/core/class/crud.dart';
import 'package:ecommer_project/core/class/linkapi.dart';

class TestData{
  Crud curd;
  TestData(this.curd);

  getData()async{
    var response = await curd.postData(AppLink.testLink, {});
    return response.fold((l) => l, (r) => r);
  }
}