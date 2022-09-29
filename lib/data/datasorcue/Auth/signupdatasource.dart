import 'package:ecommer_project/core/class/crud.dart';
import 'package:ecommer_project/core/class/linkapi.dart';

class SignupData{
  Crud curd;
  SignupData(this.curd);

  postData(String username,String email,String password,String phone)async{
    var response = await curd.postData(AppLink.signUpLink, {
       "users_name":username,
       "users_email":email,
       "users_password":password,
       "users_phone":phone,
    });
    return response.fold((l) => l, (r) => r);
  }
}