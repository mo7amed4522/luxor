import 'package:ecommer_project/core/class/statusrequest.dart';
import 'package:ecommer_project/core/constants/imageassets.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class HandlingDataView extends StatelessWidget {
  final StatusRequest? statusRequest;
  final Widget? widget;
  const HandlingDataView({super.key,this.widget,this.statusRequest});

  @override
  Widget build(BuildContext context) {
    return 
     
     statusRequest == StatusRequest.loading ?
      Center(child: Lottie.asset(AppImageAsset.loading,width:250,height:250)):
     statusRequest == StatusRequest.offlinefailure ?
      Center(child: Lottie.asset(AppImageAsset.offline,width:250,height:250)):
     statusRequest == StatusRequest.serverfailure ?
      Center(child: Lottie.asset(AppImageAsset.serverError,width:250,height:250)):
     statusRequest == StatusRequest.failure ?
     Center(child: Lottie.asset(AppImageAsset.noData,width:250,height:250)) 
     : widget!;
  }
}