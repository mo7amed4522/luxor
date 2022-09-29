import 'package:ecommer_project/core/class/crud.dart';
import 'package:ecommer_project/core/class/linkapi.dart';

class CheckEmailForgetPassword{
  Crud curd;
  CheckEmailForgetPassword(this.curd);

  postData(String email)async{
    var response = await curd.postData(AppLink.checkPasswordForget, {
       "users_email":email,
    });
    return response.fold((l) => l, (r) => r);
  }
}