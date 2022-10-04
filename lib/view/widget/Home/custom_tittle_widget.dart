import 'package:ecommer_project/core/constants/Theme/color.dart';
import "package:flutter/material.dart";

class CustomTittleHomeWidget extends StatelessWidget {
  final String titleText;
  const CustomTittleHomeWidget({super.key, required this.titleText});

  @override
  Widget build(BuildContext context) {
    return Text(
      titleText,
      style:const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: AppColor.secoundColor,
      ),
    );
  }
}
