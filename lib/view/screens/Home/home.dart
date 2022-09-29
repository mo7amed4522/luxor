import 'package:ecommer_project/controller/Home/homepage_controller.dart';
import 'package:ecommer_project/core/constants/Theme/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(HomePageControllerImp());
    return Scaffold(
      appBar: AppBar(title:const Text("Category"),centerTitle: true,elevation: 0.0,backgroundColor: AppColor.backgroundColor),
      body: GetBuilder<HomePageControllerImp>(
        builder:(controller) => Container(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: ListView(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 10),
                child: Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                          prefixIcon:const Icon(Icons.search),
                          hintText: "Find Product",
                          hintStyle:const TextStyle(fontSize: 18),
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,borderRadius: BorderRadius.circular(10),
                          ),
                          filled: true,
                          fillColor: Colors.grey[100],
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      width: 60,
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: GestureDetector(
                        onTap: (){},
                        child: Icon(Icons.notifications_active_outlined, size: 30,color:Colors.grey[600]),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.symmetric(vertical:15),
                child: Stack(
                  children: [
                    Container(
                      height:150,                      
                      decoration: BoxDecoration(
                        color: AppColor.primaryColor,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child:const ListTile(
                        title: Text("A summer Surprice",style:TextStyle(color: Colors.white,fontSize: 20)),
                        subtitle: Text("Hager",style:TextStyle(color: Colors.white,fontSize: 20)),
                      ),
                    ),
                    Positioned(
                      top: -20,
                      right: -20,
                      child: Container(
                        height: 160,
                        width: 160,
                        decoration: BoxDecoration(
                          color: AppColor.secoundColor,
                          borderRadius: BorderRadius.circular(160),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}