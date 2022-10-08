import 'package:ecommer_project/controller/Home/itemscontroller.dart';
import 'package:ecommer_project/data/models/itemesmodel.dart';
import 'package:ecommer_project/view/widget/Home/custom_appbar_widget.dart';
import 'package:ecommer_project/view/widget/Home/custom_gridviewitems_widget.dart';
import 'package:ecommer_project/view/widget/Home/custom_listcategoriesitems_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ItemsPage extends StatelessWidget {
  const ItemsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(ItemsControllerIMP());
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(25),
        child: GetBuilder<ItemsControllerIMP>(
          builder: (controller) => ListView(
            children: [
              CustomAppBarWidget(
                titleAppbar: "Find Product",
                onTapIcon: () {},
                onTapSearch: () {},
              ),
              const SizedBox(height: 20),
              const CustomListCategoriesItemsWidget(),
              GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 2,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.7,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    return CustomGridViewItemsWidget(
                      itemsModel: ItemsModel.fromJson(controller.data[index]),
                    );
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
