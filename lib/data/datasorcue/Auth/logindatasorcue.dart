import 'package:ecommer_project/core/class/crud.dart';
import 'package:ecommer_project/core/class/linkapi.dart';

class SigninData{
  Crud curd;
  SigninData(this.curd);

  postData(String email,String password)async{
    var response = await curd.postData(AppLink.signinLink, {
       "users_email":email,
       "users_password":password,
    });
    return response.fold((l) => l, (r) => r);
  }
}