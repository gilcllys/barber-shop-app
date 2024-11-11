
import 'package:get/get.dart';

class HomeController extends GetxController {

  void goToLogin(){
    Get.toNamed('/login');
  }

  void goToSignUp(){
    Get.toNamed('/signup');
  }
}
