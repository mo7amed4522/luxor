import 'package:ecommer_project/core/class/crud.dart';
import 'package:ecommer_project/core/class/linkapi.dart';

class VerifiyCodeSignupData{
  Crud curd;
  VerifiyCodeSignupData(this.curd);

  postData(String email,String verifiycode)async{
    var response = await curd.postData(AppLink.verifiycodeSignup,{
       "users_email":email,
       "users_verifiycode":verifiycode,
    });
    return response.fold((l) => l, (r) => r);
  }
}