import 'package:ecommer_project/core/class/crud.dart';
import 'package:ecommer_project/core/class/linkapi.dart';

class VerifiyCodeForgetPassword{
  Crud curd;
  VerifiyCodeForgetPassword(this.curd);

  postData(String email,String verifiycodePassword)async{
    var response = await curd.postData(AppLink.verifiyPasswordForget, {
       "users_email":email,
       "users_verifiycode":verifiycodePassword,
    });
    return response.fold((l) => l, (r) => r);
  }
}