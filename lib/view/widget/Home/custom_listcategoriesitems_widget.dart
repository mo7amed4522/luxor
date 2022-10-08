import 'package:ecommer_project/controller/Home/itemscontroller.dart';
import 'package:ecommer_project/core/constants/Theme/color.dart';
import 'package:ecommer_project/data/models/categoriesmodel.dart';
import "package:flutter/material.dart";
import "package:get/get.dart";
class CustomListCategoriesItemsWidget extends GetView<ItemsControllerIMP> {
  const CustomListCategoriesItemsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.separated(
        separatorBuilder: (context, index) => const SizedBox(
          width: 10,
        ),
        itemCount: controller.categories.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) { 
        return Categories(
          i : index, 
          categoriesModel: CategoriesModel.fromJson(
            controller.categories[index]
          ),
        );
        }
      ),
    );
  }
}


class Categories extends GetView<ItemsControllerIMP>{
  final CategoriesModel categoriesModel;
  final int? i;
  const Categories({Key? key,this.i,required this.categoriesModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        controller.changeCat(i!);
      },
      child: Column(
            children: [
             GetBuilder<ItemsControllerIMP>(
              builder: (controller) =>
               Container(
                padding: const EdgeInsets.only(left: 10,right:10,bottom: 5),
                decoration: controller.selectedCat == i ? const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(width: 3,color:AppColor.primaryColor) 
                  )
                ) : null,
                child: Text(
                  "${categoriesModel.cat_name}",
                  style: const TextStyle(
                    fontSize: 20,
                    color: AppColor.grey,
                  )
                ),
              ),
             )
            ],
          ),
    );
  }
}