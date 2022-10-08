// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:ecommer_project/controller/Home/homescreen_controller.dart';
import 'package:ecommer_project/core/constants/Theme/color.dart';
import "package:flutter/material.dart";
import 'package:get/get.dart';

class CustomButtonAppBarWidget extends StatelessWidget {
  final void Function() onPressed;
  final String titlleName;
  final IconData icon;
  final bool? active;
  const CustomButtonAppBarWidget(
      {super.key,
      this.active,
      required this.icon,
      required this.titlleName,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            color: active == true ? AppColor.primaryColor : AppColor.black,
          ),
          Text(
            titlleName,
            style: TextStyle(
              color: active == true ? AppColor.primaryColor : AppColor.black,
            ),
          )
        ],
      ),
    );
  }
}

class CustomAppBarHomeScreenWidget extends StatelessWidget {
  const CustomAppBarHomeScreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeScreenControllerIMP>(
      builder: (controller) => BottomAppBar(
      shape: const CircularNotchedRectangle(),
      notchMargin: 10.0,
      child: Row(
        children: [
          ...List.generate(controller.listPage.length + 1, ((index) {
            int _index = index > 2 ? index - 1 : index;
            return index == 2
                ? const Spacer()
                : CustomButtonAppBarWidget(
                    titlleName: controller.tittleBottomAppBar[_index],
                    onPressed: () {
                      controller.changePage(_index);
                    },
                    icon: Icons.home,
                    active: controller.currentPage == _index ? true : false,
                  );
          }))
        ],
      ),
    ),
    );
  }
}
