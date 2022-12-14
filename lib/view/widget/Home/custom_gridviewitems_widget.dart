import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecommer_project/controller/Home/itemscontroller.dart';
import 'package:ecommer_project/core/class/linkapi.dart';
import 'package:ecommer_project/core/constants/Theme/color.dart';
import 'package:ecommer_project/data/models/itemesmodel.dart';
import "package:flutter/material.dart";
import 'package:get/get.dart';

class CustomGridViewItemsWidget extends GetView<ItemsControllerIMP>{
  final ItemsModel itemsModel;
  const CustomGridViewItemsWidget({Key? key,required this.itemsModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return 
      InkWell(
        onTap:(){
          controller.goToPageProductDetails(itemsModel);
        },
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Hero(
                  tag: "${itemsModel.itemsid}",
                  child: CachedNetworkImage(
                    imageUrl: "${AppLink.imageItemes}/${itemsModel.itemsImage!}",
                  ),
                ),
                 Text(
                  itemsModel.itemsName!,
                  style:const TextStyle(
                    color: AppColor.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                 Text(
                  itemsModel.itemsDesc!,
                  textAlign: TextAlign.center,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                     Text(
                      " ${itemsModel.itemsPrice}\$",
                      style:const TextStyle(
                        color: AppColor.primaryColor,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    IconButton(
                      onPressed: (){},
                      icon: const Icon(Icons.favorite_outline),
                      color: AppColor.primaryColor,
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
    );
  }
}
