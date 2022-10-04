import 'package:ecommer_project/controller/Home/homepage_controller.dart';
import 'package:ecommer_project/core/class/linkapi.dart';
import 'package:ecommer_project/core/constants/Theme/color.dart';
import 'package:ecommer_project/data/models/itemesmodel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomListItemsWidget extends GetView<HomePageControllerImp> {
  const CustomListItemsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
        itemCount: controller.items.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, i) => 
        Itemes(
          itemsModel: controller.items[i],
        ),
      ),
    );
  }
}


class Itemes extends StatelessWidget {
  final ItemsModel itemsModel;
  const Itemes({Key? key,required this.itemsModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              margin: const EdgeInsets.symmetric(horizontal: 10),
              child: Image.network(
                "${AppLink.imageItemes}/${itemsModel.itemsImage}",
                height: 100,
                width: 150,
                fit: BoxFit.fill,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: AppColor.black.withOpacity(0.3),
                borderRadius: BorderRadius.circular(20),
              ),
              height: 120,
              width: 200,
            ),
            Positioned(
              child: Text(
                "${itemsModel.itemsName}",
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                ),
              ),
            ),
          ],
        );
  }
}