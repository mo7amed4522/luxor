import 'package:ecommer_project/core/servers/serves.dart';
import 'package:get/get.dart';

translateDataBase(columnar,columnen){
  MyServices myservices = Get.find();
  if(myservices.sharedPreferences.getString("lang")=="AR"){
    return columnar;
  }else{
    return columnen;
  }
}