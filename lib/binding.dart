import 'package:babershop_app/views/buy/buy_controller.dart';
import 'package:babershop_app/views/concluded/concluded_controller.dart';
import 'package:babershop_app/views/home/home_controller.dart';
import 'package:babershop_app/views/login/login_controller.dart';
import 'package:babershop_app/views/mainPage/main_page_controller.dart';
import 'package:babershop_app/views/reservas/reserva_controller.dart';
import 'package:babershop_app/views/singup/signup_controller.dart';
import 'package:get/get.dart';

class MainBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(HomeController());
    Get.put(LoginController());
    Get.put(SignupController());
    Get.put(Mainpagecontroller());
    Get.put(BuyController());
    Get.put(ReservaController());
    Get.put(ConcludedController());
  }
}