import 'package:flutter/material.dart';

class CustomTextFormFildAuth extends StatelessWidget {
  final String? hintText;
  final String? lable;
  final IconData? suffixIcon;
  final TextEditingController? mycontroller;
  final String? Function(String?) validator;
  final TextInputType? textInputType;
  final bool? isShowText ;
  final void Function()? sufficsIconTap;
  const CustomTextFormFildAuth({super.key,this.sufficsIconTap,this.isShowText,this.textInputType,required this.validator,this.mycontroller,this.hintText,this.lable,this.suffixIcon});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom:20),
      child: TextFormField(
        keyboardType: textInputType,
        obscureText: isShowText == null || isShowText == false ?false : true,
        validator: validator,
        controller: mycontroller,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: const TextStyle(fontSize: 14.0),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          contentPadding: const EdgeInsets.symmetric(vertical: 5, horizontal: 30),
          suffixIcon: InkWell(onTap:sufficsIconTap, child: Icon(suffixIcon)),
          label: Container(
              margin: const EdgeInsets.symmetric(horizontal: 9),
              child: Text(lable!)),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
      ),
    );
  }
}
