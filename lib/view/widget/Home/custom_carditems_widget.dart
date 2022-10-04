import 'package:ecommer_project/core/constants/Theme/color.dart';
import 'package:flutter/material.dart';

class CustomCardItemsWidget extends StatelessWidget {
  final String? title;
  final String? body;
  const CustomCardItemsWidget({Key? key, this.body, this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.symmetric(vertical: 15),
      child: Stack(
        children: [
          Container(
            height: 150,
            decoration: BoxDecoration(
              color: AppColor.primaryColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: ListTile(
              title: Text(
                title!,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              subtitle: Text(
                body!,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
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
    );
  }
}
