import 'package:ecommer_project/core/constants/Theme/color.dart';
import 'package:flutter/material.dart';

ThemeData themeEnglish = ThemeData(
  fontFamily: 'PlayfairDisplay',
  textTheme: const TextTheme(
      headline1: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 20,
        color: AppColor.black,
      ),
      headline2: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 25,
        color: AppColor.black,
      ),
      bodyText1: TextStyle(
          height: 2,
          color: AppColor.grey,
          fontWeight: FontWeight.bold,
          fontSize: 15)),
  primarySwatch: Colors.blue,
);


ThemeData themeArabic = ThemeData(
  fontFamily: 'Cairo',
  textTheme: const TextTheme(
      headline1: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 20,
        color: AppColor.black,
      ),
      headline2: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 25,
        color: AppColor.black,
      ),
      bodyText1: TextStyle(
          height: 2,
          color: AppColor.grey,
          fontWeight: FontWeight.bold,
          fontSize: 15)),
  primarySwatch: Colors.blue,
);
