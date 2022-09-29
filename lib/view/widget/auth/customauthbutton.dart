import 'package:ecommer_project/core/constants/Theme/color.dart';
import 'package:flutter/material.dart';

class CustomButtonAuth extends StatelessWidget {
  final void Function()? onPress;
  final String? text;
  const CustomButtonAuth({super.key,this.onPress,this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top:10),
      child: MaterialButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        padding: const EdgeInsets.symmetric(vertical: 13),
        onPressed: onPress,
        color: AppColor.primaryColor,
        textColor: AppColor.black,
        child: Text(
          text!,
        ),
      ),
    );
  }
}