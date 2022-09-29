import 'package:ecommer_project/controller/Auth/sucesssignup_controller.dart';
import 'package:ecommer_project/core/constants/Theme/color.dart';
import 'package:ecommer_project/view/widget/auth/customauthbutton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SuccessSignUPPage extends StatelessWidget {
  const SuccessSignUPPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SuccessSignUpControllerImp controller = Get.put(SuccessSignUpControllerImp());
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Sucess',
          style: Theme.of(context).textTheme.headline1!.copyWith(color: AppColor.grey),
        ),
      ),
      body: Container(
        padding:const EdgeInsets.all(25.0) ,
        child: Column(
           children: [
            const Center(
              child: Icon(
                Icons.check_circle_outline,
                size:200,
                color: AppColor.primaryColor,
              ),
            ),
            Text(
              'You have SignUp successfully .Go to Login Screen to access your data',
              style: Theme.of(context).textTheme.headline2,
            ),
            const Spacer(),
             SizedBox(
               width: double.infinity,
               child: CustomButtonAuth(
                 onPress: (){
                  controller.gotoLoginPage();
                 },
                 text: "Sign Up",
            ),
             ),
             const SizedBox(height: 30)
           ],
        ),
      ),
    );
  }
}