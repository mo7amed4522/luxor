import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecommer_project/controller/product/productdetails_controller.dart';
import 'package:ecommer_project/core/class/linkapi.dart';
import 'package:ecommer_project/core/constants/Theme/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductDetailsPage extends StatelessWidget {
  const ProductDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    ProductDetailsControllerImp controller =
        Get.put(ProductDetailsControllerImp());
    return Scaffold(
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: MaterialButton(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            color: AppColor.secoundColor,
            onPressed: () {},
            child: const Text(
              "Add To Cart",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            )),
      ),
      body: ListView(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                height: 180,
                decoration: const BoxDecoration(
                  color: AppColor.primaryColor,
                ),
              ),
              Positioned(
                top: 40.0,
                right: Get.width / 8,
                left: Get.width / 8,
                child: Hero(
                  tag: "${controller.itemsModel.itemsid}",
                  child: CachedNetworkImage(
                      imageUrl:
                          '${AppLink.imageItemes}/${controller.itemsModel.itemsImage!}',
                      height: 250,
                      fit: BoxFit.fill),
                ),
              ),
            ],
          ),
          const SizedBox(height: 100),
          Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "${controller.itemsModel.itemsid}",
                  style: Theme.of(context)
                      .textTheme
                      .headline1!
                      .copyWith(color: AppColor.tharedColor),
                ),
                const SizedBox(height: 10),
                Text(
                  "${controller.itemsModel.itemsDesc}",
                  style: Theme.of(context).textTheme.bodyText1!,
                ),
                const SizedBox(height: 10),
                Text(
                  "Color",
                  style: Theme.of(context)
                      .textTheme
                      .headline1!
                      .copyWith(color: AppColor.tharedColor),
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(right: 10),
                      alignment: Alignment.center,
                      padding: const EdgeInsets.only(bottom: 5),
                      height: 60,
                      width: 90,
                      decoration: BoxDecoration(
                          color: AppColor.tharedColor,
                          border: Border.all(color: AppColor.tharedColor),
                          borderRadius: BorderRadius.circular(10)),
                      child: const Text(
                        "Red",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.only(right: 10),
                      padding: const EdgeInsets.only(bottom: 5),
                      height: 60,
                      width: 90,
                      decoration: BoxDecoration(
                          border: Border.all(color: AppColor.tharedColor),
                          borderRadius: BorderRadius.circular(10)),
                      child: const Text(
                        "Black",
                        style: TextStyle(
                          color: AppColor.tharedColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.only(right: 10),
                      padding: const EdgeInsets.only(bottom: 5),
                      height: 60,
                      width: 90,
                      decoration: BoxDecoration(
                          border: Border.all(color: AppColor.tharedColor),
                          borderRadius: BorderRadius.circular(10)),
                      child: const Text(
                        "Blue",
                        style: TextStyle(
                          color: AppColor.tharedColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
