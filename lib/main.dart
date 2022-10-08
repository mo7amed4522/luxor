// ignore_for_file: no_leading_underscores_for_local_identifiers
import 'package:ecommer_project/controller/Binding/initialbindings.dart';
import 'package:ecommer_project/core/constants/routes/routes.dart';
import 'package:ecommer_project/core/localization/changelocal.dart';
import 'package:ecommer_project/core/localization/translation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'core/servers/serves.dart';
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    LocalController _controller = Get.put(LocalController());
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      translations: MyTranslation(),
      locale: _controller.language,
      title: 'Flutter Demo',
      theme:_controller.appThem,
      initialBinding: InitialBindings(),
      getPages: routes,
      //home:const MyTrasnformPage(),
    );
  }
}
