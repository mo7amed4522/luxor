// ignore_for_file: non_constant_identifier_names, prefer_typing_uninitialized_variables
import 'package:flutter/material.dart';
// ===================== Route Right ==================//
class SlideRight extends PageRouteBuilder {
  final Page;
  SlideRight({this.Page})
      : super(
          pageBuilder: (context, animation, animatedtwo) => Page,
          transitionsBuilder: (context, animation, animatedtwo, child) {
            var begin = const Offset(1, 0);
            var end = const Offset(0, 0);
            var tween = Tween(begin: begin, end: end);
            var offsetAnimation = animation.drive(tween);
            return SlideTransition(position: offsetAnimation, child: child);
          },
        );
}
// ===================== Route Left ==================//
class SlideLeft extends PageRouteBuilder {
  final Page;
  SlideLeft({this.Page})
      : super(
          pageBuilder: (context, animation, animatedtwo) => Page,
          transitionsBuilder: (context, animation, animatedtwo, child) {
            var begin = const Offset(-1, 0);
            var end = const Offset(0, 0);
            var tween = Tween(begin: begin, end: end);
            var offsetAnimation = animation.drive(tween);
            return SlideTransition(position: offsetAnimation, child: child);
          },
        );
}
// ===================== Route Slide LinearToEaseOut ==================//
class SlideLinearToEaseOut extends PageRouteBuilder {
  final Page;
  SlideLinearToEaseOut({this.Page})
      : super(
          pageBuilder: (context, animation, animatedtwo) => Page,
          transitionsBuilder: (context, animation, animatedtwo, child) {
            var begin = const Offset(-1, 0);
            var end = const Offset(0, 0);
            var tween = Tween(begin: begin, end: end);
            var curvesAnimation = CurvedAnimation(parent: animation, curve: Curves.linearToEaseOut);
            return SlideTransition(position: tween.animate(curvesAnimation), child: child);
          },
        );
}
// ===================== Route ScaleTranslate ==================//
class ScaleTransitionRoute extends PageRouteBuilder {
  final Page;
  ScaleTransitionRoute({this.Page})
      : super(
          pageBuilder: (context, animation, animatedtwo) => Page,
          transitionsBuilder: (context, animation, animatedtwo, child) {
            var begin = 0.0;
            var end = 1.0;
            var tween = Tween(begin: begin, end: end);
            var curvesAnimation = CurvedAnimation(parent: animation, curve: Curves.linearToEaseOut);
            return ScaleTransition(scale: tween.animate(curvesAnimation), child: child);
          },
        );
}
// ===================== Route ScaleTranslate ==================//
// ===================== From center to top ==================//
class CustomRouteSizeTranslte extends PageRouteBuilder {
  final Page;
  CustomRouteSizeTranslte({this.Page})
      : super(
          pageBuilder: (context, animation, animatedtwo) => Page,
          transitionsBuilder: (context, animation, animatedtwo, child) {
            return Align(child: SizeTransition(sizeFactor: animation, child:child));
          },
        );
}
// ===================== Route ScaleTranslate ==================//
// ===================== From top to end ==================//
class CustomRouteSizeTranslte2 extends PageRouteBuilder {
  final Page;
  CustomRouteSizeTranslte2({this.Page})
      : super(
          pageBuilder: (context, animation, animatedtwo) => Page,
          transitionsBuilder: (context, animation, animatedtwo, child) {
            return Align(alignment: Alignment.topCenter,child: SizeTransition(sizeFactor: animation, child:child));
          },
        );
}
// ===================== Route change Page ==================//
class ScaleTransitionRotatRoute extends PageRouteBuilder {
  final Page;
  ScaleTransitionRotatRoute({this.Page})
      : super(
          pageBuilder: (context, animation, animatedtwo) => Page,
          transitionsBuilder: (context, animation, animatedtwo, child) {
            var begin = 0.0;
            var end = 1.0;
            var tween = Tween(begin: begin, end: end);
            var curvesAnimation = CurvedAnimation(parent: animation, curve: Curves.easeInBack);
            return ScaleTransition(scale: tween.animate(curvesAnimation),child: RotationTransition(turns: tween.animate(curvesAnimation), child: child));
          },
        );
}