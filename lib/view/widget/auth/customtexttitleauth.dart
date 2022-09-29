import 'package:ecommer_project/core/constants/Theme/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class CustomTextTittleAuth extends StatelessWidget {
  final String? title;
  const CustomTextTittleAuth({super.key, this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title!,
      textAlign: TextAlign.center,
      style: Theme.of(context).textTheme.headline2,
    );
  }
}

class CustomBodyAuth extends StatelessWidget {
  final String?text;
  const CustomBodyAuth({Key? key,this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 25),
      child: Text(
        text!,
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.bodyText1,
      ),
    );
  }
}

class CustomBottomAuth extends StatelessWidget {
     final String? text1;
     final String? textButton;
     final void Function()? onPress;
  const CustomBottomAuth({Key? key,this.text1,this.textButton,this.onPress}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text1!,
        ),
        InkWell(
          onTap: onPress,
          child: Text(
            textButton!,
            style:const TextStyle(
              color: AppColor.primaryColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}

class CustomOtPFieldAuth extends StatelessWidget {
  final void Function(String)? onSubmit;
  const CustomOtPFieldAuth({Key? key,this.onSubmit}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OtpTextField(
      fieldWidth: 50.0,
      borderRadius: BorderRadius.circular(20.0),
      numberOfFields: 5,
      borderColor: AppColor.otpTextField,
      //set true to show as box or false to show dash
      showFieldAsBox: true,
      //run when code is typed her
      onCodeChanged: (String code){
        //handel validation or chechs here
      },
      onSubmit: onSubmit,//end on submit
    );
  }
}