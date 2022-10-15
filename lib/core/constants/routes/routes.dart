import 'package:ecommer_project/core/Middleware/mymiddleware.dart';
import 'package:ecommer_project/core/constants/routes/approutes.dart';
import 'package:ecommer_project/view/screens/Auth/Login.dart';
import 'package:ecommer_project/view/screens/Auth/Password/forgrtpassword.dart';
import 'package:ecommer_project/view/screens/Auth/Password/resetpassword.dart';
import 'package:ecommer_project/view/screens/Auth/Password/vrifingcodesignup.dart';
import 'package:ecommer_project/view/screens/Auth/signup.dart';
import 'package:ecommer_project/view/screens/Auth/Password/successpassword.dart';
import 'package:ecommer_project/view/screens/Auth/Password/verfiycode.dart';
import 'package:ecommer_project/view/screens/Auth/successsignup.dart';
import 'package:ecommer_project/view/screens/Home/home.dart';
import 'package:ecommer_project/view/screens/Home/homescreen.dart';
import 'package:ecommer_project/view/screens/Items/itemspage.dart';
import 'package:ecommer_project/view/screens/product/productdetail.dart';
import 'package:ecommer_project/view/screens/splachScreen/language.dart';
import 'package:ecommer_project/view/screens/splachScreen/onboarding.dart';
import 'package:get/get.dart';


List<GetPage<dynamic>>? routes =[
  //================= Home =============//
  GetPage(name: AppRoute.start, page: ()=>const Language(), middlewares: [MyMiddleWare()]),
  // ================= On Boarding =============// 
  GetPage(name: AppRoute.onBoarding, page: ()=>const OnBoarding()),
  // ================= Auth =============//
  GetPage(name: AppRoute.login, page: ()=>const LoginPage()),
  GetPage(name: AppRoute.signUp, page: ()=>const SignUpPage()),
  GetPage(name: AppRoute.forgetPassword, page: ()=>const ForgetPassword()),
  GetPage(name: AppRoute.verfiyCode, page: ()=>const VerfieyCodePage()),
  GetPage(name: AppRoute.resetCode, page: ()=>const ResetPasswordPage()),
  GetPage(name: AppRoute.successPassword, page: ()=>const SuccessPasswordPage()),
  GetPage(name: AppRoute.successSignUp, page: ()=>const SuccessSignUPPage()),
  GetPage(name: AppRoute.verfingCodeSignUp, page: ()=>const VerfieyCodeSignUpPage()),
  // ================= Home =============//
  GetPage(name: AppRoute.homePage, page: ()=>const HomePage()),
  GetPage(name: AppRoute.homeScreen, page: ()=>const HomeScreenPage()),
  GetPage(name: AppRoute.itemsPage, page: ()=>const ItemsPage()),
  GetPage(name: AppRoute.productPage, page: ()=>const ProductDetailsPage()),
];

