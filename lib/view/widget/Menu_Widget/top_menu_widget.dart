import 'package:flutter/material.dart';

class TopBarMenuWidget extends StatelessWidget {
  final String logoImage;
  final String titleName;
  const TopBarMenuWidget(
      {Key? key, required this.titleName, required this.logoImage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50, left: 40, bottom: 70),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleAvatar(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image(
                    fit: BoxFit.cover,
                    image: AssetImage(logoImage),
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                titleName,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              ),
            ],
          )
        ],
      ),
    );
  }
}
