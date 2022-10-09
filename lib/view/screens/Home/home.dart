import 'package:ecommer_project/controller/Home/homepage_controller.dart';
import 'package:ecommer_project/core/class/handlinddataview.dart';
import 'package:ecommer_project/core/constants/Theme/color.dart';
import 'package:ecommer_project/view/widget/Home/custom_appbar_widget.dart';
import 'package:ecommer_project/view/widget/Home/custom_carditems_widget.dart';
import 'package:ecommer_project/view/widget/Home/custom_listcategories_widget.dart';
import 'package:ecommer_project/view/widget/Home/custom_listitems_widget.dart';
import 'package:ecommer_project/view/widget/Home/custom_tittle_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(HomePageControllerImp());
    return Scaffold(
      appBar: AppBar(
          title: const Text("Category"),
          centerTitle: true,
          elevation: 0.0,
          backgroundColor: AppColor.backgroundColor),
      body: GetBuilder<HomePageControllerImp>(
        builder: (controller) => HandlingDataView(
          statusRequest: controller.statusRequest,
          widget: Container(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: ListView(
              children: [
                CustomAppBarWidget(
                    titleAppbar: "Find Product",
                    onTapIcon: () {},
                    onTapSearch: () {}),
                const CustomCardItemsWidget(title: "A summer Surprise", body: "Cashback 20%"),
                const SizedBox(height: 10),
                const CustomTittleHomeWidget(titleText: "Categories"),
                const CustomListCategoriesWidget(),
                const SizedBox(height: 10),
                const CustomTittleHomeWidget(titleText: "Product For you"),
                const SizedBox(height: 10),
                const CustomListItemsWidget(),
                const SizedBox(height:10),
                // const CustomTittleHomeWidget(titleText: "Offer"),
                // const SizedBox(height:10),
                // const CustomListItemsWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
