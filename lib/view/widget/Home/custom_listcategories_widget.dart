import 'package:ecommer_project/controller/Home/homepage_controller.dart';
import 'package:ecommer_project/core/class/linkapi.dart';
import 'package:ecommer_project/core/constants/Theme/color.dart';
import 'package:ecommer_project/core/func/database/translatedatabase.dart';
import 'package:ecommer_project/data/models/categoriesmodel.dart';
import "package:flutter/material.dart";
import 'package:flutter_svg/svg.dart';
import "package:get/get.dart";
class CustomListCategoriesWidget extends GetView<HomePageControllerImp> {
  const CustomListCategoriesWidget({super.key});

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


class Categories extends GetView<HomePageControllerImp>{
  final CategoriesModel categoriesModel;
  final int? i;
  const Categories({Key? key,this.i,required this.categoriesModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        controller.goToItems(controller.categories , i!,categoriesModel.cat_id!);
      },
      child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: AppColor.tharedColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 10),
                height: 70,
                width: 70,
                child: SvgPicture.network(
                  "${AppLink.imageCategories}/${categoriesModel.cat_image}",
                  color: AppColor.secoundColor,
                ),
              ),
              Text(
                "${translateDataBase(categoriesModel.cat_name_ar,categoriesModel.cat_name)}",
                style: const TextStyle(
                  fontSize: 13,
                  color: AppColor.black,
                ),
              ),
            ],
          ),
    );
  }
}