// ignore_for_file: avoid_renaming_method_parameters

import 'package:ecommer_project/view/screens/Home/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class HomeScreenController extends GetxController{
  changePage(int currentPage);
}
class HomeScreenControllerIMP extends HomeScreenController{

int currentPage = 0;

List<Widget> listPage=[
const HomePage(),
Column(mainAxisAlignment: MainAxisAlignment.center,children:const [Center(child: Text("Settings"))]),
Column(mainAxisAlignment: MainAxisAlignment.center,children:const [Center(child: Text("Profile"))]),
Column(mainAxisAlignment: MainAxisAlignment.center,children:const [Center(child: Text("Favorite"))]),
];

List tittleBottomAppBar = [
  "Home",
  "Settings",
  "Profile",
  "Favorite"
];

@override
changePage(int i){
 currentPage = i;
 update();
}
}