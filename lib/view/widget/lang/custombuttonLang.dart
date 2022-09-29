// ignore_for_file: file_names

import 'package:ecommer_project/core/constants/Theme/color.dart';
import 'package:flutter/material.dart';

class CustomButtonLang extends StatelessWidget {
  final void Function() ontap;
  final String? text;
  const CustomButtonLang({super.key,required this.ontap,this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 100),
      width: double.infinity,
      child: MaterialButton(
        onPressed: ontap,
        textColor: AppColor.black,
        color: AppColor.primaryColor,
        child:  Text(
          text!,
          style:const TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
