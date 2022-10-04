class AppLink{
  // ================================ Server Link ========================= //
  static const String serverLink = "http://localhost:3000";

  // ================================ Test File ========================= //
  static const String testLink = "$serverLink/test.php";

 // ================================ image Uploda ========================= //
  static const String imageStatic = "$serverLink/upload";
  static const String imageItemes = "$imageStatic/items/";
  static const String imageCategories = "$imageStatic/upload/categories";

  // ================================ Auth ========================= //
  static const String signinLink ="$serverLink/Auth/signin.php";
  static const String signUpLink ="$serverLink/Auth/signup.php";
  static const String verifiycodeSignup ="$serverLink/Auth/verifiycode.php";


  // ================================ ForgetPassword ========================= //
  static const String checkPasswordForget ="$serverLink/forgetPassword/checkpassword.php";
  static const String verifiyPasswordForget ="$serverLink/forgetPassword/verifiycode.php";
  static const String restePaswordForget ="$serverLink/forgetPassword/resetepassword.php";
  
  
  // ================================ ForgetPassword ========================= //
  static const String home ="$serverLink/Home/home.php";
}