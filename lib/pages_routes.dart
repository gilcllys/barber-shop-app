
import 'package:babershop_app/views/buy/buy_screen.dart';
import 'package:babershop_app/views/concluded/concluded_view.dart';
import 'package:babershop_app/views/home/home_view.dart';
import 'package:babershop_app/views/login/login_view.dart';
import 'package:babershop_app/views/mainPage/main_page_screen.dart';
import 'package:babershop_app/views/reservas/reserva_view.dart';
import 'package:babershop_app/views/singup/signup_view.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

import 'binding.dart';

MainBinding mainBinding = MainBinding();

List<GetPage> routePages = [
  GetPage(
    name: '/home',
    page: () => const HomeView(),
    binding: mainBinding,
  ),
  GetPage(
    name: '/login',
    page: () => const LoginView(),
    binding: mainBinding,
  ),
  GetPage(
    name: '/signup',
    page: () => const SignupView(),
    binding: mainBinding,
  ),
  GetPage(
    name: '/mainpage',
    page: () => const Mainpagescreen(),
    binding: mainBinding,
  ),
  GetPage(
    name: '/buy',
    page: () => const BuyScreen(),
    binding: mainBinding,
  ),
  GetPage(
    name: '/concluded',
    page: () => const ConcludedView(),
    binding: mainBinding,
  ),
  GetPage(
    name: '/reservas',
    page: () => const ReservaView(),
    binding: mainBinding,
  ),
];