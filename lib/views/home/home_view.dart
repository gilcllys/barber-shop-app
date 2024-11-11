import 'package:babershop_app/views/home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF302238),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 50),
                child: Image.asset('assets/images/logo.png'),
              ),
              SizedBox(
                width: 207,
                height: 70,
                child: ElevatedButton(
                  onPressed: () {
                    controller.goToLogin();
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xffBD89FF),
                    foregroundColor: Colors.white,
                  ),
                  child: const Text('Entrar'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 40),
                child: SizedBox(
                  width: 207,
                  height: 70,
                  child: ElevatedButton(
                    onPressed: () {
                      controller.goToSignUp();
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        foregroundColor: Colors.white,
                        side: const BorderSide(
                            color: Color(0xffFF9A3E), width: 3)),
                    child: const Text('Cadastrar'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
