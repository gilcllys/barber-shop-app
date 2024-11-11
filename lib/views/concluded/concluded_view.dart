import 'package:babershop_app/views/concluded/concluded_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class ConcludedView extends GetView<ConcludedController> {
  const ConcludedView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF302238),
      appBar: AppBar(
        backgroundColor: const Color(0xFF302238),
        title: const Text(
          'Reserva Finalizada',
          style: TextStyle(color: Colors.white),
        ),
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              child: Lottie.asset(
                  width: 400,
                  height: 400,
                  fit: BoxFit.fill,
                  'assets/json_lottie/Animation - 1730945710255.json',
                  controller: controller.animationController,
                  onLoaded: (composition) {
                controller.animationController.duration =
                    controller.customDuration;
                controller.animationController.forward();
              }),
            ),
            const Text(
              'Reserva finalizada com sucesso !',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            ElevatedButton(
              onPressed: () => Get.toNamed('/mainpage'),
              child: const Text('Voltar tela inicial'),
            )
          ],
        ),
      ),
    );
  }
}
