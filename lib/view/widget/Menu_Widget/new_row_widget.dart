import 'package:flutter/material.dart';

class NewRow extends StatelessWidget {
  final IconData? icon;
  final String? text;

  const NewRow({
    Key? key,
    this.icon,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children:[
        Icon(
          icon,
          color: Colors.white,
        ),
        const SizedBox(
          width: 20,
        ),
        Text(
          text!,
          style:const TextStyle(color: Colors.white),
        )
      ],
    );
  }
}